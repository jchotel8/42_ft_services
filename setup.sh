#!/bin/bash

# CONFIGURATION
INFORMATION="\033[01;33m" #yellow
SUCCESS="\033[1;32m"      #green
ERROR="\033[1;31m"        #red
RESET="\033[0;0m"         #white

# PRINT_MESSAGE : 2 paramètres, la couleur et le message
print_message() {
  NOW=$(date +%H:%M:%S)
  printf "$1%s ➜ $2$RESET\n" $NOW
}


# MINIKUBE FUNCTIONS
minikube_reset_vbox_dhcp_leases() {
  # # Reset Virtualbox DHCP Lease Info
  print_message $INFORMATION "Resetting Virtualbox DHCP Lease Info..."
  kill -9 $(ps aux |grep -i "vboxsvc\|vboxnetdhcp" | awk '{print $2}') 2>/dev/null

  if [[ -f ~/Library/VirtualBox/HostInterfaceNetworking-vboxnet0-Dhcpd.leases ]] ; then
    rm  ~/Library/VirtualBox/HostInterfaceNetworking-vboxnet0-Dhcpd.leases
  fi
  exit 0
}

clean_mini() {
  print_message $INFORMATION "Cleaning minikube..."
  kubectl delete --all deployments
  kubectl delete --all services
  kubectl delete --all pods
  print_message $SUCCESS "Minikube cleaned."
}

redo_service()
{
  print_message $INFORMATION "restarting $1..."
  kubectl delete -f srcs/$1/$1.yaml
  eval $(minikube docker-env)
  docker rmi -f $1

  docker build -t $1 srcs/$1/. --build-arg var=$(minikube ip)
  kubectl apply -f srcs/$1/$1.yaml
  print_message $SUCCESS "restarted $1"
}

do_telegraf()
{
  for i in 'nginx' 'phpmyadmin' 'mysql' 'ftps' 'wordpress' 'grafana' 'influxdb'
  do
    cp srcs/telegraf.conf srcs/$i/
    sed -i "s/hostname = \".*.\"/hostname = \"$i\"/" srcs/$i/telegraf.conf
  done
}

do_docker()
{
  for i in 'nginx' 'phpmyadmin' 'mysql' 'ftps' 'wordpress' 'grafana' 'influxdb'
  do
    print_message $RESET "$i"
    docker build -t $i srcs/$i/. > /dev/null --build-arg var=$(minikube ip)
  done
}

do_yaml()
{
  for i in 'nginx' 'phpmyadmin' 'mysql' 'ftps' 'wordpress' 'grafana' 'influxdb'
  do
    kubectl apply -f srcs/$i/$i.yaml
  done
}

# HELP : called when wrong arguments
help() {
  echo "    -clean        Nettoyer Minikube (enlève les pods)
    -restart      Redémarrer minikube (peut prendre quelques minutes)
    -delete       Nettoyer Minikube et le supprimer

    -nginx        Supprimer et relancer nginx
    -phpmyadmin   Supprimer et relancer phpmyadmin
    -mysql        Supprimer et relancer mysql
    -ftps         Supprimer et relancer ftps
    -wordpress    Supprimer et relancer wordpress
    -telegraf     Applique les changements sur chaque telegraf.conf
    
    --mac          Applique les sed pour mac
    --reset-ip    Remettre l'adresse ip de minikube à zéro
    --ip          Afficher l'ip de minikube
    --help        Afficher la page d'aide "
}




# MINIKUBE SCRIPT
print_message $INFORMATION "----------FT_SERVICE----------"
# ARGUMENTS LOOP
for i in 0 $#
do
  if [ "$i" = "0" ]; then
    continue
  fi
  case "${!i}" in
    "-clean")
      clean_mini
    ;;
    "-restart")
      minikube delete
    ;;
    "-delete")
      minikube delete
      exit 0
    ;;
    "--reset-ip")
      minikube_reset_vbox_dhcp_leases
      exit 0
    ;;
    "--ip")
      print_message $RESET $(minikube ip)
      exit 0
    ;;
    "--mac")
      exit 0
    ;;
    "-telegraf")
      do_telegraf
      exit 0
    ;;
    "-docker")
      do_docker
      exit 0
    ;;
    "-yaml")
      do_yaml
      exit 0
    ;;
    "-nginx"|"-phpmyadmin"|"-mysql"|"-ftps"|"-wordpress"|"-grafana"|"-influxdb")
      redo_service $(echo $1 | cut -c2-)
      exit 0
    ;;
    *)
      help
      exit 0
    ;;
  esac
done


# STARTING MINIKUBE W/ EXTENTIONS
#minikube start --cpus=2 --memory=4096 --disk-size=8000mb --vm-driver=virtualbox --extra-config=apiserver.service-node-port-range=30000-32767
print_message $INFORMATION "Trying to start Minikube if need be..."
if ! minikube status >/dev/null 2>&1
  then
    if ! minikube start --vm-driver=docker --extra-config=apiserver.service-node-port-range=1-35000
    then
        print_message $ERROR "Minikube failed to start !"
        exit 1
    fi
    print_message $SUCCESS "Minikube started successfully."
    print_message $INFORMATION "Adding addons to minikube..."
    # add extentions to minikube
    minikube addons enable metrics-server
    minikube addons enable ingress
    minikube addons enable dashboard
    print_message $SUCCESS "Addons addedd successfully."
  else
    print_message $SUCCESS "Minikube already started."
fi
export IP_ADDRESS=$(minikube ip)

sed -i "7s/^.*/wget http:\/\/${IP_ADDRESS}\/wordpress/g" srcs/wordpress/run.sh

# TELEGRAF
print_message $INFORMATION "Adding telegraf.conf to folders..."
do_telegraf
print_message $SUCCESS "Added all telegraf.conf"
# DOCKER IMAGES
print_message $INFORMATION "Trying to build docker images..."
eval "$(minikube docker-env)" # send the docker images to minikube
do_docker
print_message $SUCCESS "Docker images are built."
# YAML FILES to link docker images to kubectl and minikube
print_message $INFORMATION "Tring to add .yaml to minikube"
do_yaml
kubectl apply -f srcs/ingress.yaml
print_message $SUCCESS "YAML filed added to minikube."


#FINAL STATEMENT
print_message $SUCCESS "The setup went well."
print_message $RESET "Minikube IP : $IP_ADDRESS"

print_message $INFORMATION "Waiting for the site to be up..."
until $(curl --output /dev/null --silent --head --fail http://$IP_ADDRESS/); do
  printf "."
	sleep 0.5
done
printf "\n"
print_message $SUCCESS "Site is running."

while true; do
    read -p "Copy [$IP_ADDRESS] to your clipboard ? (y/n) " yn
    case $yn in
        [Yy]* ) echo "$IP_ADDRESS" | pbcopy; printf "%s copied to your clipboard.\n" "$IP_ADDRESS"; break;;
        * ) exit;;
    esac
done
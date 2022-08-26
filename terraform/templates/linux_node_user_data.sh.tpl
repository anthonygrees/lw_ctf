install_lw() {
    echo " ************************"
    echo " **** Install CTF ****"
    echo " ************************"
    sudo apt-get update
    sudo apt-get install docker -y
    sudo apt-get install docker-compose -y
    sudo apt-get install nginx -y
    sudo apt-get install ufw -y
    sudo apt-get install unzip -y
    sudo systemctl stop nginx
    unzip /tmp/lacework-capture-the-flag.zip -d /tmp
    cd /tmp/lacework-capture-the-flag
    sudo docker-compose up -d
}

install_lw

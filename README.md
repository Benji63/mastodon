# mastodon
Ansible Mastodon Project B3 OpenIT

Prerequis

- Une Machine virtuelle Linux (Debian,ubuntu) qui aura le role d'hote
- Une Machine virtuelle Linux (Debian,ubuntu) qui aura le role de client
- D'un accés a  internet pour l'installation

MACHINE HOTE 

- Installer GIT:
Apt-get install git

- Installer pip :
Apt install python3-pip
ou
wget https://bootstrap.pypa.io/get-pip.py -O get-pip.py python3 get-pip.py --user

- Installer Ansible :
	python3 -m pip install --user ansible 
	python3 -m pip install --upgrade --user ansible

- Crée un dossier ou on pourra mettre les fichier de deployement

- Executer la commande pour cloner le projet depuis git
- git clone ................  

MACHINE CLIENTE


- Finir l'installation de l'os (Debian dans notre cas) en cochant dans l'installation "serveur ssh" pour que le script ansible puisse se lancé
- Si ce n'est pas le cas executer la commande
apt-get install openssh-server
- Recuperer l'adresse IP et la mettre dans le fichier ........


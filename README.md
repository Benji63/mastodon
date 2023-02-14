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
- Installer "sshpass" pour pouvoir se connecter avec un utulisateur classique

sudo apt install sshpass 

- Crée un dossier ou on pourra mettre les fichier de deployement

- Executer la commande pour cloner le projet depuis git
- git clone https://github.com/Benji63/mastodon 

MACHINE CLIENTE


- Finir l'installation de l'os (Debian dans notre cas) en cochant dans l'installation "serveur ssh" pour que le script ansible puisse se lancé

- Si ce n'est pas le cas executer la commande
apt-get install openssh-server

- On part du principe que sudo et installé et que l'utilisateur est dans le fichier sudoers (nano /etc/sudoers)

- Recuperer l'adresse IP et la mettre dans le fichier "inventory.ini" , en dessous de la variable [mastodon]

- Dans le même fichier , personnaliser les champs suivant avec un utulisateur qui a les droit ....
ansible_ssh_user 
ansible_ssh_password 
ansible_become_password

- Dans le fichier "mastodon" qui se trouve dans le dossier "groupe_vars" , vous pouvez modifier les champs suivant a votre guise : 
http_server (nginx ou apache2)
dedicated_ram (Mettre 4096 minimum)
LOCAL_DOMAIN
DB_USER
DB_PASS
SMTP_SERVER (a changer uniquement si vous possedez deja un serveur SMTP)
SMTP_PORT (a changer uniquement si vous possedez deja un serveur SMTP)
SMTP_LOGIN (a changer uniquement si vous possedez deja un serveur SMTP)
SMTP_PASSWORD (a changer uniquement si vous possedez deja un serveur SMTP)


# MASTODON
*Ansible Mastodon Project B3 OpenIT*

## Prerequis

- Une Machine virtuelle Linux (Debian,ubuntu) qui aura le rôle d'hôte
- Une Machine virtuelle Linux (Debian,ubuntu) qui aura le rôle de client
- D'un accés à internet pour l'installation


----------


 ### MACHINE HOTE
- Se connecter en root 

```shell
apt-get install sudo
```
 - Se connecter en utilisateur 

- Si vous n'arrivez pas à faire sudo avec l'utilisateur rajouter votre utilisateur en dessous du `root` dans le dossier `/etc/sudoers` en utilisateur root

- Mettre à jour la machine 

```shell
sudo apt-get update
sudo apt-get upgrade
```

- Installer GIT:
```bash
sudo apt-get install git
```


- Installer Ansible :
```bash
sudo apt-get install ansible 
```
- Vérifier que ansible est bien installé

```shell
ansible --v
```

- Installer "sshpass" pour pouvoir se connecter avec un utilisateur classique
```bash
sudo apt install sshpass
```


- Créer un dossier où on pourra mettre les fichiers de deploiement `mkdir 'nomdossier' `

- Se rendre dans le dossier (`cd 'nomdossier'`)

- Executer la commande pour cloner le projet depuis git
```bash
git clone https://github.com/Benji63/mastodon
```

- Enfin rentrer dans le dossier avec la commande `cd mastodon`

----------



### MACHINE CLIENTE


- Finir l'installation de l'os (Debian dans notre cas) en cochant dans l'installation "serveur ssh" pour que le script ansible puisse se lancer

- Si ce n'est pas le cas éxecuter la commande
```bash
apt-get install openssh-server
```

- On part du principe que sudo est installé et que l'utilisateur est dans le fichier sudoers (`nano /etc/sudoers` puis même manipulation que pour la machine hôte)

- Récuperer l'adresse IP via `ip a`


----------
 ### MACHINE HOTE 
 mettre l'IP du client dans le fichier `inventory.ini`, en dessous de la variable `[mastodon]` et `[db]`

- Dans le même fichier , personnaliser les champs suivant avec un utilisateur qui a les droit sudoers
```bash
ansible_ssh_user 
ansible_ssh_password 
ansible_become_password
```


- Dans le fichier `mastodon` qui se trouve dans le dossier `groupe_vars`, vous pouvez modifier les champs suivant à votre guise : 

```bash
http_server #nginx ou apache2
dedicated_ram #Mettre 4096 minimum
LOCAL_DOMAIN
DB_USER
DB_PASS
SMTP_SERVER #a changer uniquement si vous possedez deja un serveur SMTP
SMTP_PORT #a changer uniquement si vous possedez deja un serveur SMTP
SMTP_LOGIN #a changer uniquement si vous possedez deja un serveur SMTP
SMTP_PASSWORD #a changer uniquement si vous possedez deja un serveur SMTP
```
### Lancement du script

- Retourner dans le fichier de base `Mastodon` qui a été telechargé par la commande `git clone`

- Sur la machine hôte se rendre dans le dossier où se trouve le fichier `mastodon.yml` normalement présent dans le dossier `mastodon` que vous avez préalablement telechargé via la commande `git clone`

- Executer la commande :

```shell
ansible-playbook mastodon.yml
```
- Attendre environ 30 minutes

- Se rendre sur le naviguateur et taper dans la barre de recheche l'url

> https://'ipclient'

- Vous aurez un avertissement , il suffit de cliquer sur `avancé` -> `continuer vers ...`

> Vidéo prouvant le bon fonctionnement du script : https://youtu.be/DxQeX9kYOdU


## 🙇 Author
#### Benjamin PIAT
#### Jérôme DEFOUR
#### Cedric GORCE
        

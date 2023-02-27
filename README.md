
# MASTODON
*Ansible Mastodon Project B3 OpenIT*

## Prerequis

- Une Machine virtuelle Linux (Debian,ubuntu) qui aura le role d'hote
- Une Machine virtuelle Linux (Debian,ubuntu) qui aura le role de client
- D'un accés a  internet pour l'installation


----------


 ### MACHINE HOTE
- Se connecter en root 

```shell
apt-get install sudo
```
 - Se connecter en utulisateur 

- Si vous n'arriver pas a faire sudo avec l'utulisateur rajouter votre utulisateur en dessous du `root` dans le dossier `/etc/sudoers` en utulisateur root

- Mettre a jour la machine 

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
- Verifier que ansible est bien installer

```shell
ansible --v
```

- Installer "sshpass" pour pouvoir se connecter avec un utulisateur classique
```bash
sudo apt install sshpass
```


- Crée un dossier ou on pourra mettre les fichier de deployement `mkdir 'nomdossier' `

- Ce rendre dans le dossier (`cd 'nomdossier'`)

- Executer la commande pour cloner le projet depuis git
```bash
git clone https://github.com/Benji63/mastodon
```

- Enfin rentrer dans le dossier avec la commande `cd mastodon`

----------



### MACHINE CLIENTE


- Finir l'installation de l'os (Debian dans notre cas) en cochant dans l'installation "serveur ssh" pour que le script ansible puisse se lancé

- Si ce n'est pas le cas executer la commande
```bash
apt-get install openssh-server
```

- On part du principe que sudo et installé et que l'utilisateur est dans le fichier sudoers (`nano /etc/sudoers` puis meme manipulation que pour la machine hôte)

- Recuperer l'adresse IP via `ip a`


----------
 ### MACHINE HOTE 
 mettre l'IP dans le clients dans le fichier `inventory.ini`, en dessous de la variable `[mastodon]`

- Dans le même fichier , personnaliser les champs suivant avec un utulisateur qui a les droit sudoeurs
```bash
ansible_ssh_user 
ansible_ssh_password 
ansible_become_password
```


- Dans le fichier `mastodon` qui se trouve dans le dossier `groupe_vars`, vous pouvez modifier les champs suivant a votre guise : 

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

- Retourner dans le fichier de base `Mastodon` qui a etait par la telechager par la commande `git clone`

- Sur la machine hote Se rendre dans le dossier ou se trouve fichier `mastodon.yml` normalement present dans le dossier `mastodon` que vous avez prealablement telecharger via la commande `git clone`

- Executer la commande :

```shell
ansible-playbook mastodon.yml
```
- Attendre environ 30 minute 

- Se rendre sur le naviguateur et tappé dans la barre de recheche d'url

> https://'ipclient'

- Vous aurez un avertissement , il suffit de cliquer sur `avencé` -> `continuer vers ...`

> Vidéo prouvant le bon fonctionnement du script : https://youtu.be/DxQeX9kYOdU


## 🙇 Author
#### Benjamin PIAT
#### Jérôme DEFOUR
#### Cedric GORCE
        

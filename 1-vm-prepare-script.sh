# PRZYGOTOWANIE VM DO PRACY Z DOCKEREM

# Instalacja dockera
sudo snap install docker

# Instalacja Lazydocker
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash

### Firewall na Azure
###Settings -> Networking (dodać potrzebne porty)

# Firewall w systemie (np. Ufw)
sudo ufw allow 8080
Sudo ufw allow 22
Sudo ufw enable
sudo ufw reload

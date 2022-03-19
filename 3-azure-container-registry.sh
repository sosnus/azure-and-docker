# konfiguracja ACR po strowrzneiu usługi

# jak wysłać zbudowany obraz na serwer? 

# 1. zezwolić na dostęp przy pomocy loginu i hasła
# settings -> access keys -> Admin user (enabled)
# skopiować login i hasło

# 2. dodać repozytorium do dockera lokalnie
sudo docker login <lowcy.azurecr.io>
### podać loin i hasło

# 3. zbudować obraz z odpowienim tagiem
sudo docker build -t <registry>.azurecr.io/<nazwa-repo:tag>

# 4. docker push
sudo docker push <registry>.azurecr.io/<nazwa-repo:tag>


# -------------------------------
# jak wysłać kod by zbudował się po stronie ACR?

# 1. instalacja azure-cli
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# 2. logowanie do azure-cli
az login

# 3. wyślij kod do ACR by skompilował się w chmurze
az acr build -t calc/calc-lowcy:latest -r lowcy .
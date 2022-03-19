
# jezeli pip nie działa nalezy wykonac 2 komendy:
## sudo apt update
## sudo apt install python3-pip
# aby zainstalowac bibliotekę potrzebną do projektu naley wykonać komendę
## pip3 install web.py

# napisać aplikację i przetestować ją w środowisku lokalnym 
## (app.py)
###(curl --location --request GET 'localhost:8080?a=1&b=2') or (curl 'localhost:8080?a=1&b=2')

# stworzyć plik z niezbędnymi bibliotekami
## (requirements.txt)

# stworzyć plik dockerfile
## (Dockerfile)

# TESTUJEMY PROJEKT LOKALNIE
python3 app.py

# BUDUJEMY PROJEKT
# UWAGA! aby projekt się zbudował, musimy być wewnątrz projektu (w naszym przypadku w katalogu /app)
sudo docker build -t calc-lowcy .
# -t lowcy-calc # tag, nazwa naszego obrazu aplikacji (image)

# URUCHAMIAMY PROJEKT
sudo docker run -d -p 8080:8080 --name lowcy-calc-image calc-lowcy
# --name lowcy-calc-image # nazwa naszego kontenera (container)
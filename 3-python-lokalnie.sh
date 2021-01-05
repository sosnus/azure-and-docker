# napisać aplikację i przetestować ją w środowisku lokalnym 
## (app.py)
###(curl --location --request GET 'localhost:8080?a=1&b=2') or (curl 'localhost:8080?a=1&b=2')

# stworzyć plik z niezbędnymi bibliotekami
## (requirements.txt)

# stworzyć plik dockerfile
## (Dockerfile)


# BUDUJEMY PROJEKT
# UWAGA! aby projekt się zbudował, musimy być wewnątrz projektu (w naszym przypadku w katalogu /app)
sudo docker build -t lowcy-calc .
# -t lowcy-calc # tag, nazwa naszego obrazu aplikacji (image)

# URUCHAMIAMY PROJEKT
sudo docker run -p 8080:8080 --name lowcy-calc-image lowcy-calc
# -n lowcy-calc-image # nazwa naszego kontenera (container)
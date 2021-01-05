# Sprawdzamy czy docker dizała (w konsoli powinna pojawić się informacja "Hello from Docker!")
sudo docker run hello-world

# pobieramy obraz
sudo docker pull nginx

# sprawdziamy obrazy na dysku
sudo docker images

# uruchamiamy obraz Nginxa
sudo docker run -p 8080:80 nginx

# uruchamiamy obraz Nginxa z dodatkowymi flagami
sudo docker run -p 8080:80 --name mojserwernginx nginx:alpine
## -p 80:80 # przekierowujemy port kontenera na port maszyny <gospodarz>:<kontener>
## --name mojserwernginx # dodajemy nazwę kontenera (zamiast losowej)
## :alpine # nazwa tagu

# uruchamiamy obraz Nginxa z dodatkowymi flagami NA STAŁE
sudo docker run -p 8080:80 -d --restart=always --name mojserwernginx nginx:alpine
## -d # detached - uruchomienie w tle
## --restart=always # nakazujemy restart maszyny za kadym razem (restart maszyny gospodarza, błąd wewnątrz aplikacji, itp.)


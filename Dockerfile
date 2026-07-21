FROM nginx:alpine
# Copia o index.html e a pasta src/ com as imagens para o Nginx
COPY . /usr/share/nginx/html
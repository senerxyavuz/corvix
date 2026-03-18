# Ana proje Dockerfile - Coolify bu dosyayı otomatik bulur
# web/ klasöründeki tüm dosyaları Nginx'e kopyalar

FROM nginx:alpine

# Nginx varsayılan konfigürasyonunu kaldır
RUN rm /etc/nginx/conf.d/default.conf

# web/ klasöründeki nginx konfigürasyonunu kopyala
COPY web/nginx.conf /etc/nginx/conf.d/default.conf

# web/ klasöründeki site dosyalarını Nginx'e kopyala
COPY web/ /usr/share/nginx/html

# 80 portunu aç
EXPOSE 80

# Nginx'i başlat
CMD ["nginx", "-g", "daemon off;"]

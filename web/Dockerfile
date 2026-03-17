# Corvix Web - Nginx tabanlı statik site Docker imajı
# Coolify bu dosyayı kullanarak otomatik build ve deploy yapar

# Hafif Alpine Linux tabanlı Nginx imajı kullan
FROM nginx:alpine

# Nginx varsayılan konfigürasyonunu kaldır
RUN rm /etc/nginx/conf.d/default.conf

# Özel Nginx konfigürasyonumuzu kopyala
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Web dosyalarını container içine kopyala
COPY . /usr/share/nginx/html

# 80 portunu dışarıya aç (Coolify bunu otomatik yönetir)
EXPOSE 80

# Nginx'i ön planda çalıştır (container canlı kalsın)
CMD ["nginx", "-g", "daemon off;"]

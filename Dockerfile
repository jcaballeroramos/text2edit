FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY logo-transparente-convivencia-blanco-y-negro-con-caja-small.png /usr/share/nginx/html/logo-transparente-convivencia-blanco-y-negro-con-caja-small.png
RUN sed -i 's/listen\s*80;/listen 8080;/g' /etc/nginx/conf.d/default.conf
EXPOSE 8080

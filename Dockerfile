FROM nginx:mainline-alpine 
COPY mysite.template:/etc/nginx/conf.d/mysite.template
COMMAND /bin/bash -c "envsubst < /etc/nginx/conf.d/mysite.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
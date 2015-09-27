FROM nginx
MAINTAINER Links Innovation <events@linksinnovation.com>


# -----------------------------------------------------------------------------
# Custom config to reverse proxy loadbalance
# -----------------------------------------------------------------------------
ADD default.conf /etc/nginx/conf.d/default.conf
ADD nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
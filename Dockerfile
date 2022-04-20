FROM wordpress:5.9.3-php7.4-apache
WORKDIR /usr/src/wordpress
RUN set -eux; \
    find /etc/apache2 -name '*.conf' -type f -exec sed -ri -e "s!/var/www/html!$PWD!g" -e "s!Directory /var/www/!Directory $PWD!g" '{}' +; \
    cp -s wp-config-docker.php wp-config.php
COPY src/themes/ ./wp-content/themes/
COPY src/plugins/ ./wp-content/plugins/
EXPOSE 80
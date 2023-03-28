FROM dockware/dev:5.7.9
USER root

COPY ./mollie.sh /var/www/html/custom/plugins/mollie.sh
RUN chmod +x /var/www/html/custom/plugins/mollie.sh
CMD ["/bin/bash", "-c", "/var/www/html/custom/plugins/mollie.sh >/dev/null 2>&1 && tail -f /dev/null"]
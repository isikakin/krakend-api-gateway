FROM devopsfaith/krakend

COPY . /etc/krakend/

RUN FC_ENABLE=1 \
FC_SETTINGS="config/settings" \
FC_PARTIALS="config/partials" \
FC_TEMPLATES="config/templates" \
krakend check -t -d -c "config/sample.json"

ENTRYPOINT FC_ENABLE=1 \
FC_SETTINGS="/etc/krakend/config/settings" \
FC_PARTIALS="/etc/krakend/config/partials" \
FC_TEMPLATES="/etc/krakend/config/templates" \
krakend run -c "/etc/krakend/config/sample.json"
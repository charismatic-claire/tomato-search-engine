#!/bin/sh
initialize_db() {
    python3 manage.py makemigrations tomatos
    python3 manage.py migrate --fake-initial
    python3 manage.py importtomatos /data/tomatos.json
    touch /state/initialized
}
start_server() {
    python3 manage.py runserver 0.0.0.0:8080
}
if [ ! -f "/state/initialized" ]; then
    initialize_db
fi
start_server

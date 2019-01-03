#!/bin/bash

docker-compose down --remove-orphans
rm -fr volumes/osticket_db/*
docker-compose up -d --force-recreate

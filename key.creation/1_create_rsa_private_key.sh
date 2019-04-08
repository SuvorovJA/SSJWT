#!/usr/bin/env bash
openssl genrsa -des3 -passout pass:x000 -out server.pass.key 2048
openssl rsa -passin pass:x000 -in server.pass.key -out server.key
rm server.pass.key

#!/usr/bin/env bash

openssl pkcs12 -export -name servercert -in server.crt -inkey server.key -out myp12keystore.p12
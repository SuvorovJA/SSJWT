#!/usr/bin/env bash

keytool -list -rfc --keystore mykeystore.jks | openssl x509 -inform pem -pubkey -noout > public.txt
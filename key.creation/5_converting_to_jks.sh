#!/usr/bin/env bash

keytool -importkeystore -destkeystore mykeystore.jks -srckeystore myp12keystore.p12 -srcstoretype pkcs12 -alias servercert
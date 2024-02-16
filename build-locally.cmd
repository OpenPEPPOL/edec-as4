@echo off
docker run --pull always --rm -i -v %CD%/docs:/documents -v %CD%/target/site:/target difi/asciidoctor
docker run --pull always --rm -i -v %CD%/target:/src -w /src/site kramos/alpine-zip -r /src/ticc-as4-master.zip .
::docker run --rm -i -v %CD%:/src alpine:3.8 chown -R $(id -g $USER).$(id -g $USER) /src/target

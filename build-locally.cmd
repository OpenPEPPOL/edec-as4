@echo off

:: AsciiDoc 2.0.10
::docker run -it -v %CD%/docs:/documents -v %CD%/target/site:/target difi/asciidoctor asciidoctor -v
::docker run --pull always --rm -i -v %CD%/docs:/documents -v %CD%/target/site:/target difi/asciidoctor


:: AsciiDoc 2.0.20
::docker run -it -v %CD%/docs:/documents/ -v %CD%/target/site:/target asciidoctor/docker-asciidoctor asciidoctor --help
docker run --rm -i -v %CD%/docs:/documents/ -v %CD%/target/site:/target asciidoctor/docker-asciidoctor asciidoctor specification/main.adoc -o /target/specification/index.html
::docker run -it -u $(id -u):$(id -g) -v %CD%/docs:/documents/ -v %CD%/target/site:/target asciidoctor/docker-asciidoctor

::docker run --pull always --rm -i -v %CD%/target:/src -w /src/site kramos/alpine-zip -r /src/ticc-as4-master.zip .
::docker run --rm -i -v %CD%:/src alpine:3.8 chown -R $(id -g $USER).$(id -g $USER) /src/target

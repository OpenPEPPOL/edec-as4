docker run --rm -i -v $(pwd)/docs:/documents -v $(pwd)/target/site:/target difi/asciidoctor
docker run --rm -i -v $(pwd)/target:/src -w /src/site kramos/alpine-zip -r /src/ticc-as4-$TRAVIS_BRANCH.zip .
docker run --rm -i -v $(pwd):/src alpine:3.8 chown -R $(id -g $USER).$(id -g $USER) /src/target

# docker-davmail
Dockerfile for Davmail

## Usage

You'll need to mount a `davmail.properties` file based on [this sample](http://davmail.sourceforge.net/serversetup.html) and customize the options you need (such as `davmail.url` for your Exchange server). Expose the ports relevant to your use case (described in that file).

    docker run --rm -it \
               -v $(pwd)/davmail.properties:/davmail.properties \
               -p 1080:1080 \
               -p 1143:1143 \
               -p 1389:1389 \
               -p 1110:1110 \
               -p 1025:1025 \
               joanrieu/davmail

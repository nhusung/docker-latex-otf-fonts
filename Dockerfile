FROM nhusung/latex:latest

RUN set -ex; \
    apk add --no-cache font-adobe-source-code-pro; \
    wget -O /tmp/source-sans-pro.zip https://www.fontsquirrel.com/fonts/download/source-sans-pro; \
    unzip /tmp/source-sans-pro.zip '*.otf' -d /usr/share/fonts/OTF; \
    rm /tmp/source-sans-pro.zip; \
    wget -O /tmp/libertinus.zip https://www.fontsquirrel.com/fonts/download/libertinus; \
    unzip /tmp/libertinus.zip 'LibertinusSerif-*.otf' 'LibertinusMath-Regular.otf' -d /usr/share/fonts/OTF; \
    rm /tmp/libertinus.zip; \
    fc-cache -fv

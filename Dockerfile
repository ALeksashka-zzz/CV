FROM ubuntu:18.04

ENV DEBIAN_FRONTEND="noninteractive" 
TZ="Europe/Moscow"

RUN apt-get update && apt-get install -y \
 texlive-base \
 texlive-generic-recommended \
 texlive-fonts-recommended \
 texlive-latex-recommended \
 texlive-fonts-extra \
 texlive-latex-extra

COPY /src/main.tex /src/main.tex

CMD ["bash"]

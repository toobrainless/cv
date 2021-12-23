FROM ubuntu:20.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get install --yes --no-install-recommends texlive-fonts-recommended \
    texlive-fonts-extra \
    texlive-latex-extra \
    dvipng \
    texlive-latex-recommended \
    texlive-base \
    texlive-pictures \
    texlive-lang-cyrillic \
    texlive-science \
    cm-super

COPY main.tex /data/main.tex

RUN cd ./data/ && pdflatex main.tex

CMD [ "bash" ]

FROM ubuntu:latest
COPY . /usr/lib
WORKDIR /usr/lib
RUN apt-get update && apt-get install -y pandoc && apt-get install -y texlive \
&& pandoc -f markdown -t latex indices/indice01.md\
&& pandoc -f markdown -t latex indices/indice02.md\
&& pandoc -f markdown -t latex indices/indice03.md\
&& pandoc -f markdown -t latex indices/indice04.md\
&& pandoc -f markdown -t latex indices/indice05.md\
&& pandoc -f markdown -t latex indices/indice06.md\
&& pandoc -f markdown -t latex indices/indice07.md\
&& pandoc -f markdown -t latex indices/indice08.md\
&& pandoc -f markdown -t latex indices/indice09.md\
&& pandoc -f markdown -t latex indices/indice10.md\
&& pandoc -f markdown -t latex indices/indice12.md\
&& pandoc -f markdown -t latex indices/indice13.md\
&& pandoc -f markdown -t latex rapport.md\

# Copyright 2015-2019 Sean Nelson <audiohacked@gmail.com>
FROM audiohacked/ftb_base:latest
LABEL maintainer="Sean Nelson <audiohacked@gmail.com>"



WORKDIR /minecraft

USER minecraft

RUN wget https://www.curseforge.com/minecraft/modpacks/ftb-revelation/download/3133852/file \
    && unzip FTB+Revelation-3.4.0.zip} \
    && rm FTB+Revelation-3.4.0.zip
RUN chmod u+x FTBInstall.sh ServerStart.sh
RUN sed -i '2i /bin/sh /minecraft/CheckEula.sh' /minecraft/ServerStart.sh
RUN /minecraft/FTBInstall.sh

FROM drydock/u14all:master

ADD . /u14nodall

RUN /u14nodall/install.sh && rm -rf /u14nodall

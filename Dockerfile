FROM drydock/u14all:prod

ADD . /u14nodall

RUN /u14nodall/install.sh && rm -rf /u14nodall

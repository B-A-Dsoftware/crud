FROM envoyproxy/envoy-alpine:latest

RUN apk update && apk add python3 bash
RUN python3 --version && pip3 --version
RUN mkdir /code
COPY . /code
WORKDIR /code
RUN pip3 install -r requirements.txt
ADD ./start_service.sh /usr/local/bin/start_service.sh
RUN chmod u+x /usr/local/bin/start_service.sh
ENTRYPOINT /usr/local/bin/start_service.sh

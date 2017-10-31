FROM alpine
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
COPY start-jetty /
RUN apk add -U curl openjdk7-jre-base bash && \
    curl -O -L http://download.eclipse.org/jetty/7.6.17.v20150415/dist/jetty-distribution-7.6.17.v20150415.tar.gz && \  
    tar xzvf jetty-distribution-7.6.17.v20150415.tar.gz && \
    mkdir -p /usr/share/jetty/ && \
    cp -r jetty-distribution-7.6.17.v20150415/* /usr/share/jetty/ && \
		rm -rf jetty-distribution-7.6.17.v20150415*
EXPOSE 8080
ENTRYPOINT ["/start-jetty"]

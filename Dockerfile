FROM centos:7 
LABEL maintainer="HJ"
WORKDIR /app/source
ADD . /app/source
RUN ./mvnw clean package



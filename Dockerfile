FROM centos:7 as builder
LABEL maintainer="HJ"
WORKDIR /app/source
RUN ./mvnw clean package


FROM builder
COPY --from=builder ./webapp/target/webapp.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]

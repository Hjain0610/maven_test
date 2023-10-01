FROM centos:7 as builder
LABEL maintainer="HJ"
RUN mvn clean package


FROM builder
ADD --from=builder ./webapp/target/webapp.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]

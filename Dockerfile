FROM tomcat:latest

LABEL maintainer="HJ"

ADD /var/lib/jenkins/workspace/docker_cicd_webapp/webapp/target/webapp.war /usr/local/tomcat/webapps/
 

EXPOSE 8080

CMD ["catalina.sh", "run"]

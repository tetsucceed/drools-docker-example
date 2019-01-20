FROM jboss/wildfly:14.0.1.Final

ENV JAVA_OPTS="-Xms1024m -Xmx2048m -XX:MetaspaceSize=512M -XX:MaxMetaspaceSize=1024m -Djava.net.preferIPv4Stack=true -Dorg.kie.server.id=kie-test -Dorg.kie.server.user=test -Dorg.kie.server.pwd=test123 -Dorg.kie.server.location=http://127.0.0.1:8080/kie-server/services/rest/server"

ADD application-roles.properties /opt/jboss/wildfly/standalone/configuration/ 
ADD application-users.properties /opt/jboss/wildfly/standalone/configuration/ 
ADD kie-server-roles.properties /opt/jboss/wildfly/standalone/configuration/ 
ADD kie-server-users.properties  /opt/jboss/wildfly/standalone/configuration/
ADD standalone-full-kie-server.xml /opt/jboss/wildfly/standalone/configuration/
ADD business-central-7.15.0.Final-wildfly14.war /opt/jboss/wildfly/standalone/deployments/
ADD kie-server-7.15.0.Final-ee7.war /opt/jboss/wildfly/standalone/deployments/

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-c","standalone-full-kie-server.xml" ]

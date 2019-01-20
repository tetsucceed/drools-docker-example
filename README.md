## BEFORE

```
wget https://download.jboss.org/drools/release/7.16.0.Final/business-central-7.16.0.Final-wildfly14.war
```

```
wget https://download.jboss.org/drools/release/7.16.0.Final/kie-server-distribution-7.16.0.Final.zip
```

## BUILD

```
docker build -t test-wildfly .
```

## RUN

```
docker run -p 8080:8080 -p 9990:9990 -t test-wildfly:latest
```

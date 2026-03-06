FROM amazoncorretto:17-alpine-jdk

EXPOSE 8080

COPY ./target/java-maven-app-*.jar /usr/app/
WORKDIR /usr/app

<<<<<<< Updated upstream
CMD java -jar java-maven-app-*.jar
=======
CMD java -jar java-maven-app-*
>>>>>>> Stashed changes

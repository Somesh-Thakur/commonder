FROM openjdk:17-slim

WORKDIR /app

RUN apt-get update && apt-get install -y git curl

RUN git clone https://github.com/freyacodes/Lavalink.git && \
    cd Lavalink && \
    ./gradlew build -x test

WORKDIR /app/Lavalink

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]

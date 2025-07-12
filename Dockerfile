# Usar la imagen base de OpenJDK 17 (para coincidir con tu proyecto)
FROM eclipse-temurin:17-jre-alpine


# Establecer el directorio de trabajo
WORKDIR /app

# Copiar el archivo JAR generado por Spring Boot
COPY target/virtualvuelo-0.0.1-SNAPSHOT.jar app.jar

# Exponer el puerto de la aplicación
EXPOSE 8089

# Ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]
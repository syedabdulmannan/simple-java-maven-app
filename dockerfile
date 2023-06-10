# Use a base image that includes Java
FROM openjdk:11

# Set the working directory within the container
WORKDIR /app

# Copy the JAR file to the container
COPY target/*.jar /app/*.jar

# Set the command to execute when the container starts
CMD ["java", "-jar", "/app/*.jar"]

#The user jenkins needs to be added to the group docker:
# sudo usermod -a -G docker jenkins
# cp Dockerfile /var/lib/jenkins/workspace/Testing/

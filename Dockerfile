FROM openjdk:8
ADD jarstaging/com/valaxy/demo-workshop/2.1.4/demo-workshop-2.1.4.jar Dockerimage.jar 
ENTRYPOINT ["java", "-jar", "Dockerimage.jar"]
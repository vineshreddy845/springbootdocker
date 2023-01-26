#FROM openjdk:11
#ADD target/springbootdocker-0.0.1-SNAPSHOT.jar springdocker.jar
#ENTRYPOINT ["java","-jar","/springdocker.jar"]
#above and below code works same.
FROM openjdk:18
ARG JAR_FILE=target/springbootdocker-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]


#  the theory is.
# first one base image.openjdk:11 is base image. it is not present in local. so that it is pulled from docker hub.
#ADD target/our jar filr.jar  is coping in to anther jar filr(give whatever name).see above line code two.
# we excute springboot application in terminal like using these command.
# " java -jar target/jarfile.jar " example:$ java -jar target/myapplication-0.0.1-SNAPSHOT.jar
# so same way we are give above line code in ENTRYPOINT ["java","-jar", "jarfile.jar"].




important:  when run docker image(springboot application) using --> docker run image name;  ---> the springboot application sucessfully with portnumber you can see in 
command prompot. but you can't access it. 

example:
  we created docker image for springboot application. then we run application in command prompt using --> docker run imagename. Application run suucessfully with port
  number 5000; you can't access it. you can try it in postman. because our application running docker container. we slove by exchange with portnumber;
  
  example docker run -p hostportnumber:portnumber imagename;
          
          dokcer run -p 9000:5000 vineshname; // we can access now using 9000 port number  you can try in postman. http://localhost:9000/api/findall.

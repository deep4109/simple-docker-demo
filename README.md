How to push springboot app to docker name openjsk?
Use window powershell
step 1 package web app jar
step 2 docker cp Downloads/rest-docker-demo.jar sleepy_hellman:/tmp
step 3 check if copied 
      docker exec sleepy_hellman ls /tmp
step 4 commit
      docker commit --change='CMD java -jar /tmp/rest-docker-demo.jar' sleepy_hellman deep/rest-docker-demo:v3
      
step 5 docker images
step 6  docker run -p 8080:8080 deep/rest-docker-demo:v3

using automation
step 1 create docker file
step 2 excute command in idea terminal
      docker build -t deep/rest-docker-demo:v4 .
step 4 exec command
     docker run -p 8080:8080 deep/rest-docker-demo:v3
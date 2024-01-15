=> Command:
docker build -t assignment .

=> Description:
The docker build command is used to build a Docker image from a set of instructions provided in a Dockerfile. A Dockerfile is a text file that contains a series of commands specifying how to assemble a Docker image. 

=> Output:
[+] Building 1.5s (8/8) FINISHED                                                                                                                                       docker:default
 => [internal] load build definition from Dockerfile                                                                                                                            
 => => transferring dockerfile: 31B                                                                        
 => [internal] load .dockerignore    

 => => transferring context: 2B                                                                                                                                                 
 => [internal] load metadata for docker.io/library/python:3.9-slim-bullseye                                                                                                      
 => [1/3] FROM docker.io/library/python:3.9-slim-bullseye@sha256:b1e212609b1167570f35cd62d3b9ec1565d9fd6a082119ee4d0b00355ca37033                                               
 => [internal] load build context                                                                                                                                                0

 => => transferring context: 118B                                                                                                                                               
 => CACHED [2/3] COPY . .                                                                                                                                                
 => CACHED [3/3] RUN pip install -r requirements.txt               
 => exporting to image                                                                                                                                                   
 => => exporting layers                                                                                                                                                  
 => => writing image sha256:2e576734f83aadc621c8e0bc4d181924c44a8329866be7cda4662b2738fa12ed                                                                                 
 => => naming to docker.io/library/assignment1 


 Logs have been further attached in build.log file

-------------------------------------------------------------------------------------------------------------------------------------------------------

=> Command:
docker run -d -p 8000:8000 --name Assignment_1 -i assignment > build1.log 2>&1

=> Description:
The docker run command is used to create and run a Docker container based on a specified Docker image. Its the basic command in Docker and is used to execute applications within a container. 

=> Logs/Output:
f4cc2ccc8fe76f629a50103ebc557346d6141abb4a6b6f412670cee62014b0fe

Logs:
docker logs f4cc2ccc8fe7
 * Serving Flask app 'app'
 * Debug mode: off
WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
 * Running on all addresses (0.0.0.0)
 * Running on http://127.0.0.1:8000
 * Running on http://172.17.0.2:8000

-------------------------------------------------------------------------------------------------------------------------------------------------------


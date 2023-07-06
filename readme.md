# DEVOPS BOOTCAMP BATCH-3
## PROJECT - OBJECT DETECTION MODEL
We have a Object Detection Applications that follows a microservice architecture, consisting of four separate containers that communicate using either <b>DOCKER COMPOSE</b> or <b>KUBERNETES</b>.

### APPLICATION COMPONENTS
Following are the different components of our application:

#### <b>FRONTEND</b>
The frontend/UI of our application, allowing us to give images as input and receive the output.
#### <b>POLYBOT</b>
Used to connect & perform I/O operations from the Telegram application.
#### <b>YOLO5</b>
Object Detection Model, the main component of our application that performs all the computation and calculations, providing us with the output.
#### <b>MONGODB</b>
Database to store all the input images along with the output from the YOLO5 Object Detection Model.
#### <b>SECRET COMPONENT</b>
???

That would be the complete arhictecture for the application that would be automated using a CI/CD (Continous Integration & Continous Delivery) pipeline that would be created using - <b>JENKINS</b>.

### JENKINS PIPELINE WORKFLOW
1. Get Code
2. Build & Tag Docker images for microservices
3. Login to ECR (Elastic Container Registry)
4. Push images to ECR
5. Write unit tests (Optional, but we'll do it anyways :) )
6. Create Infrastructure in AWS, if needed (for 'dev' branch)
7. Deploy the application on either <b>EC2</b>(Elastic Compute Cloud) or <b>EKS</b>(Elastic Kubernetes Service)

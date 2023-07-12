# TutimAI

## Present TutimAI
1. The foundation of a new start-up that wants to bring JOY to people
2. What are TUTIM? Why TutimAI (fresh, sweet, joyful, healthy)
3. 

## The Application - Part 1 
### (object detection (ML): frontend + yolo5 + mongodb)
1. Describe the application from the user's perspective, 
2. Explain micro-services architecture, 
3. Show a demo, 
4. Show sequence diagram

## The Application - Part 2 
### (object detection (AI): Telegram + yolo5 + mongodb + OpenAI ChatGPT)
Same as above

## The Application - Part 3
### (image creation: Telegram + OpenAI Dall-e)
Same as above

## The Technology Stack
### Application: 
python micro-services

### Container Technology
Docker

### Orchestration Technology
Docker-Compose and Kubernetes

## Deployment
Use 2 types of infrastrctures
1.Development/QA environments: EC2 Instance (docker-compose)
2.Production/Staging: EKS cluster (deployment using Helm)

Cloud: AWS 

## Automation: 
We use Jenkins, deployed on Kubernetes. The agents are pods which have containers with the required tools:

1. AWS CLI for interacting with AWS, 
2. Docker for building, tagging and pushing docker images
2. kubectl for interacting with Kubernetes, 
3. Helm for deploying to Kubernetes)
4. Terraform for provisioning infrastructure - IaC (Infrastructure-as-Code)

### Present CI/CD Part 1 (Jenkins/Kubectl/Helm - Hello-World)
Deploy Hello-World application to Kubernetes (kubectl and Helm)

### Present CI/CD Part 2 (Jenkins/Docker - Build Docker Images)
Build, tag and push Docker images

### Present CI/CD Part 3 (Jenkins/Terraform - Provision Cloud Infrastrcture)
Build, tag and push Docker images

### Present Developer Workflow - Pull Request (changes in the application code)
Change the code of the 'frontend' micro-service (e.g. main screen's background color), commit, push and create pull request 

### Present DevOps Workflow - Pull Request (changes in the automation code)
Change the code of the Jenkins' pipeline (in Jenkinsfile)

### Present DevOps Workflow - Pull Request (changes in the infrastructure's code - IaC)
Change the code of one of the Terraform resource and apply to show the effect (e.g. change fromPort and toPort in a security group)

### 


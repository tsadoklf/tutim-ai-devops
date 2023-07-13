# TutimAI

## Present TutimAI StartUp
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
### (object detection (AI): Telegram + yolo5 + mongodb + Slack + OpenAI ChatGPT)
Same as above

## The Application - Part 3
### (image creation: Telegram + OpenAI Dall-e)
Same as above

## The Technology Stack

### Source Code Management - SCM
We use **GitHub** 
### Programming Languages: 
python micro-services

### Container Technology
Docker

### Orchestration Technology
Docker-Compose and Kubernetes

### Deployment
Use 2 types of infrastrctures
1.Development/QA environments: EC2 Instance (docker-compose)
2.Production/Staging: EKS cluster (deployment using Helm)

### Cloud Services: 
AWS - Amazon Web Services

### Automation: 
We use Jenkins, deployed on Kubernetes. The worker agents are pods which have containers with the required tools:

1. **AWS CLI** for interacting with AWS, 
2. **Docker** for building, tagging and pushing docker images
2. **kubectl** for interacting with Kubernetes, 
3. **Helm** for deploying to Kubernetes
4. **Terraform** for provisioning infrastructure - IaC (Infrastructure-as-Code)

### Present Docker Container Usage
Use a container 

### Present CI/CD Part 1 (Jenkins/Kubectl/Helm - Hello-World)
Deploy Hello-World application to Kubernetes (kubectl and Helm)

### Present CI/CD Part 2 (Jenkins/Docker - Build Docker Images)
Build, tag and push Docker images

### Present CI/CD Part 3 (Jenkins/Terraform - Provision Cloud Infrastrcture)
Provision resources on AWS using Terraform, which is an IaC technology

### Present Developer Workflow - Pull Request (changes in the application code)
Change the code of the 'frontend' micro-service (e.g. main screen's background color), commit, push and create pull request 

### Present DevOps Workflow - Pull Request (changes in the automation code)
Change the code of the Jenkins' pipeline (in Jenkinsfile)

### Present DevOps Workflow - Pull Request (changes in the infrastructure's code - IaC)
Change the code of one of the Terraform resource and apply to show the effect (e.g. change fromPort and toPort in a security group)

### Links
Frontend (production, kubernetes)
http://aada482ae939d430180f1feba4d11f49-899972468.us-west-2.elb.amazonaws.com/

Frontend (dev, ec2 instance)
http://52.14.144.19:8082/

Telegram (production bot)
https://web.telegram.org/k/#@tutim_ai_bot

Telegram (dev bot)
https://web.telegram.org/k/#@tutim_ai_dev_bot


Jenkins
http://aada482ae939d430180f1feba4d11f49-899972468.us-west-2.elb.amazonaws.com/jenkins

GitHub repositories

#### tutim-ai-app
https://github.com/tsadoklf/tutim-ai-app

#### tutim-ai-devops
https://github.com/tsadoklf/tutim-ai-devops






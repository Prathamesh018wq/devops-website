# DevOps Website Deployment Project

## 1. Project Overview
This project demonstrates a simple website deployment using Linux,
Git, Docker, GitHub Actions, and Docker Hub.

## 2. Technologies Used
- Linux
- Git and GitHub
- Docker
- Nginx
- GitHub Actions (CI/CD)
- Docker Hub
- Bash scripting

## 3. Project Features
- Website hosted using Nginx
- Docker image creation
- Automated Docker image build and push
- Website health monitoring
- Manual rollback testing
- HTTP status verification

## 4. CI/CD Pipeline
1. Update website source code.
2. Push changes to GitHub.
3. GitHub Actions runs the workflow.
4. Docker image is built and tested.
5. Image is pushed to Docker Hub.
6. Image can be pulled and deployed as a container.

## 5. Monitoring
The monitor.sh script checks the website on port 8085.

- HTTP 200: Website is healthy.
- HTTP 000: No HTTP response received.

## 6. Rollback Testing
A previous website version was rebuilt from a Git commit
and deployed in a separate Docker container.

The rollback test returned HTTP 200 and displayed Version 2 Deployed.

## 7. Important Commands

Check running containers:
docker ps

Build Docker image:
docker build -t devops-website:v1 .

Run monitoring:
bash monitor.sh

Check website response:
curl -I http://localhost:8085

## 8. Learning Outcomes
- Linux command-line operations
- Git version control
- Docker image and container management
- CI/CD pipeline implementation
- Website health monitoring
- Manual rollback and troubleshooting

## 9. Future Improvements
- Automated deployment
- Automated rollback
- Continuous monitoring and alerts
- Cloud deployment on AWS

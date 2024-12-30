# Flask CodePipeline Practice

This repository demonstrates a simple **Flask application** integrated with **AWS CodePipeline**, **CodeBuild**, and **CodeDeploy** for deployment. It provides a hands-on approach to practicing Continuous Integration and Continuous Deployment (CI/CD) using AWS services.

---

## Overview

The project includes:  
- A Flask web application that renders a webpage listing the colors of the rainbow.  
- Build, deploy, and pipeline configurations to automate deployment to an EC2 instance.  

---

## Project Structure

```plaintext
├── app.py                  # Flask application
├── buildspec.yml           # Build configuration for AWS CodeBuild
├── appspec.yml             # Deployment configuration for AWS CodeDeploy
├── templates/              # Directory for HTML templates
│   └── index.html          # Template to render the colors list
├── scripts/                # Deployment hook scripts
│   ├── install_dependencies.sh  # Script to install dependencies
│   └── start_server.sh          # Script to start the Flask server

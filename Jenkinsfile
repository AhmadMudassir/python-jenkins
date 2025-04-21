pipeline {
  agent any
  
  environment {
  	PYTEST="/home/linux/.local/bin/pytest"
  }
  stages {
    stage('Clone Repo') {
        steps {
            git url: 'https://github.com/AhmadMudassir/python-jenkins.git', branch: 'main'
            sh '${PYTEST} test_app.py'
        }
    }
    stage('Build Docker Image') {
            steps {
                sh 'docker build -t flask-api .'
            }
        }
    stage('Run Docker Container') {
            steps {
                sh 'docker stop flask-api'
                sh 'docker rm flask-api'
                sh 'docker run -d -p 5000:3001 --name flask-api flask-api'
                
            }
        }
     }
  }

pipeline {
  agent any
  stages {
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

pipeline {
    agent any
stages {
stage('Test-App') {
            steps {
                withEnv(["PYTHONPATH=$WORKSPACE:$PYTHONPATH"])
                sh 'pytest test_app.py'
            }
        }    
stage('Build Docker Image') {
            steps {
                sh 'docker build -t flask-api .'
            }
        }
stage('Run Docker Container') {
            steps {
                sh '''
                docker stop flask-api 
                docker rm flask-api
                docker run -d -p 5000:3001 --name flask-api flask-api
                '''
            }
        }
    }
}

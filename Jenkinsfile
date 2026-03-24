pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t gameoflife:latest .'
            }
        }
        stage('Deploy to Dev') {
            steps {
                sh 'docker stop gameoflife-dev || true'
                sh 'docker rm gameoflife-dev || true'
                sh 'docker run -d --name gameoflife-dev -p 9090:8080 gameoflife:latest'
                sh 'echo "App deployed at http://localhost:9090/gameoflife"'
            }
        }
    }
}

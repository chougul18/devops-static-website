pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                git 'https://github.com/chougul18/devops-static-website.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("chougule18/devops-static-site")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    dockerImage.run('-p 8080:80')
                }
            }
        }
    }
}

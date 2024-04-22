pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                // Build the Docker image with the tag 'mern-app'
                script {
                    docker.build('mern-app')
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                // Run a Docker container from the 'mern-app' image
                script {
                    docker.image('mern-app').run('-p 3000:3000')
                }
            }
        }
    }
}

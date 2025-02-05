pipeline {
    agent any

    environment {
        IMAGE_NAME = "ragavi-nginx"
        CONTAINER_NAME = "nginx-container"
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'git@github.com:ragavi-git/Docker.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t $IMAGE_NAME .' 
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    sh '''
                        docker stop $CONTAINER_NAME || true
                        docker rm $CONTAINER_NAME || true
                        docker run -d --name $CONTAINER_NAME -p 80:80 $IMAGE_NAME
                    '''
                }
            }
        }
    }
}

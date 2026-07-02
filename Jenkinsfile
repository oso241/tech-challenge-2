pipeline {
    agent any

    environment {
        AWS_REGION = 'us-east-2'
        ECR_REPO = '741180448896.dkr.ecr.us-east-2.amazonaws.com/tech-challenge-2'
        IMAGE_TAG = "${BUILD_NUMBER}"
        HELM_RELEASE = 'hello-world'
        HELM_CHART = './helm/hello-world'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ${ECR_REPO}:${IMAGE_TAG} .'
            }
        }

        stage('Push Image to ECR') {
            steps {
                sh '''
                aws ecr get-login-password --region ${AWS_REGION} | docker login --username AWS --password-stdin ${ECR_REPO}
                docker push ${ECR_REPO}:${IMAGE_TAG}
                '''
            }
        }

        stage('Deploy to EKS with Helm') {
            steps {
                sh '''
                helm upgrade --install ${HELM_RELEASE} ${HELM_CHART} \
                --set image.repository=${ECR_REPO} \
                --set image.tag=${IMAGE_TAG}
                '''
            }
        }

        stage('Verify Deployment') {
            steps {
                sh 'kubectl get pods'
                sh 'kubectl get svc'
                sh 'kubectl get deployment'
            }
        }
    }
}
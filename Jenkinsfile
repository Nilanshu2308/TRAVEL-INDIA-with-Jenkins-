pipeline {
    agent any

    environment {
        NODE_ENV = 'production'
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Cloning repository...'
                checkout scm
            }
        }

        stage('Install Dependencies') {
            steps {
                echo 'Installing dependencies...'
                sh 'npm install' // Use 'pip install -r requirements.txt' for Python
            }
        }

        stage('Run Tests') {
            steps {
                echo 'Running tests...'
                sh 'npm test' // Replace with your test command
            }
        }

        stage('Build') {
            steps {
                echo 'Building the project...'
                sh 'npm run build' // Replace with your build step
            }
        }

        stage('Deploy') {
            when {
                branch 'main'
            }
            steps {
                echo 'Deploying application...'
                // Add your deploy script here
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed.'
        }
    }
}

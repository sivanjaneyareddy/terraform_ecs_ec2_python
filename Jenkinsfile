pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'development', url: 'https://github.com/mbreddy507/lineaje-dev.git'
            }
        }
        stage('Terraform init') {
            steps {
                sh 'sudo terraform init'
            }
        }
        stage('terraform  action') {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('sudo terraform ${action} --auto-approve')
            }
        }
    }
           
    }


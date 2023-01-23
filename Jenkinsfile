pipeline {
    agent any
      stages {
        stage('Install Terraform') {
            steps {
                sh 'sudo apt update'
                sh 'sudo apt install snapd'
                sh 'sudo snap install terraform --classic'
                
            }
        }
        stage('Terraform') {
            steps {
                sh 'terraform init'
                sh 'terraform plan'
                sh 'terraform apply -auto-approve'
            }
        }
    }
}

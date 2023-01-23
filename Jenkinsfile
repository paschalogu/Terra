pipeline {
    agent any
      stages {
        stage('Install Terraform') {
            steps {
                sh 'apt update'
                sh 'apt install snapd'
                sh 'snap install terraform --classic'
                
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

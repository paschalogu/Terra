pipeline {
    agent any    
        stage('Install Terraform') {
            steps {
                sh 'apt-get update'
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

pipeline {
    agent any
     tools {
        terraform 'terraform'
     }
    stages {
//         stage('Install Terraform') {
//              steps {
//                sh 'apt update'
//                sh 'apt install terraform --classic'
//               }
//            }
        stage('Terraform ssinit') {
            steps {
                sh 'terraform init'
                sh 'terraform plan'
                sh 'terraform apply -auto-approve'
            }
        }
    }
}

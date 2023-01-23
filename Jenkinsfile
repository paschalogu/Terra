// pipeline {
//     agent any
//       stages {
//         stage('Install Terraform') {
//             steps {
//                 sh 'apt update'
//                 sh 'apt install snapd'
//                 sh 'snap install terraform --classic'
                
//             }
//         }
//         stage('Terraform') {
//             steps {
//                 sh 'terraform init'
//                 sh 'terraform plan'
//                 sh 'terraform apply -auto-approve'
//             }
//         }
//     }
// }


pipeline {
    agent any
       stages {
        stage('Install Terraform') {
             steps {
               sh 'apt update'
               sh 'apt install terraform --classic'
              }
          }
//         stage('Configure AWS') {
//             steps {
//                 withAWS(credentials: '<your_aws_credentials>') {
//                     sh 'aws configure set aws_access_key_id <access_key>'
//                     sh 'aws configure set aws_secret_access_key <secret_key>'
//                     sh 'aws configure set region <region>'
//                 }
//             }
//         }
        stage('Terraform') {
            steps {
                sh 'terraform init'
                sh 'terraform plan'
                sh 'terraform apply -auto-approve'
            }
        }
    }
}


pipeline{
  agent any
  environment {
  PATH = "{$path}:${getTerraformPath()}"
}

stages{
  stage('terraform init'){
    steps{
      sh 'terraform init'
      sh 'terraform apply -auto-approve'
    }
  }
  
  }
  }
  def getTerraformPath(){
  tfHome = tool name: 'terraform', type: 'terraform'
  return tfHome
  }





// pipeline {
//     agent any
//      tools {
//         terraform 'terraform-11'
//      }
//     stages {
//          stage('Install Terraform') {
//               steps {
//                 sh 'apt update'
//                 sh 'apt install terraform --classic'
//                }
//             }
//         stage('Terraform ssinit') {
//             steps {
//                 sh 'terraform init'
//                 sh 'terraform plan'
//                 sh 'terraform apply -auto-approve'
//             }
//         }
//     }
// }

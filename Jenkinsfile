pipeline {

  environment {
    registry = "docker-registry.flavoursofindia.eu:5000/webserver/centos-webserv"
    dockerImage = ""
  }

  agent any

  stages {

    stage('Checkout Source') {
      steps {
        git 'https://github.com/atul34/mycoderepo.git'
      }
    }

    stage('Build image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }

    stage('Push Image') {
      steps{
        script {
          docker.withRegistry( "" ) {
            dockerImage.push()
          }
        }
      }
    }

    stage('Deploy App') {
      steps {
        script {
          kubernetesDeploy(configs: "app1.yaml", kubeconfigId: "mykubeconfig")
        }
      }
    }

  }

}

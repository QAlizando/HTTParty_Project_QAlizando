#!groovy
pipeline {
  agent any
    stages {
      stage('Docker Build') {
        steps { 
            sh script:'docker build -t cucumber/httparty .'
        }
      }

    stage('Tests Run') {
      steps { 
            sh script:'docker run --name cucumber-httparty cucumber/httparty $@'
      }
    }

    stage('Generating Test Report') {
      steps {
          sh script: 'ls $(pwd)/reports'
        cucumber (
          jsonReportDirectory: '/reports/report.json',
          buildStatus: 'UNSTABLE'
        )
      }  
    } 

    stage('Deleting Container') {
      steps {
        sh script:'docker rm $(docker ps -a -q)'
        sh script:'docker rmi $(docker images -aq)'
    }
   }
  }
}



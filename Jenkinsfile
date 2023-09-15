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
            sh script:'docker run -v "$(pwd)/reports:/reports" --name cucumber-httparty cucumber/httparty $@'
            sh script: 'ls $(pwd)/reports'
      }
    }

    stage('Generating Test Report') {
      steps {
        cucumber (
          fileIncludePattern: '*.json',
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



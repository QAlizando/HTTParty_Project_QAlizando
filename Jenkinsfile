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

    stage('Wait for Report') {
      steps {
        sleep(time: 10, unit: 'SECONDS')
      }
    }

    stage('Generating Test Report') {
      steps {
        cucumber (
          fileIncludePattern: '**/*.json',
          jsonReportDirectory: 'report.json',
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



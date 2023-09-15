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
        script{
            try { 
              sh script:'docker run --name cucumber-httparty cucumber/httparty $@'
              sh script: 'ls $(pwd)'
            } catch(exception) {
              echo exception.getMessage()
              currentBuild.result = 'FAILURE'
            }
          }
        }
    }

    stage('Generating Test Report') {
      steps {
        cucumber (
          fileIncludePattern: '*.json',
          jsonReportDirectory: '/Users/tonygee/.jenkins/workspace/QAlizando_Jenkinsfile',
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



#!groovy

pipeline {
  agent any
    stages {
        stage('Docker Build') {
           steps { 
            sh:'docker build -t cucumber/httparty .'
           }
        }

    stage('Tests Run') {
        steps { 
            sh:'docker run --name cucumber-httparty cucumber/httparty $@'
        }
    }
 }

}



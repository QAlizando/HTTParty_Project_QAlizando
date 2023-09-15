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
        steps   { 
            sh script:'docker run --name cucumber-httparty cucumber/httparty $@'
            }
        }
    }

}



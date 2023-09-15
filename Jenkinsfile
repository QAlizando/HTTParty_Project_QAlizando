#!groovy
pipeline {
    agent any
    stages {
        stage('Docker Build') {
            agent any
        steps {
            sh:'docker build -t cucumber/httparty .'
        }
    }

    stage('Tests Run') {
        steps   {
            sh:'docker run --name cucumber-httparty cucumber/httparty $@'
            }
        }
    
    }
}




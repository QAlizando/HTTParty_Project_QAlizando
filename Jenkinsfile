#!groovy
pipeline {
    agent any
    stages {
        stage('Docker Build') {
            agent any
            sh:'docker build -t cucumber/httparty .'
    }

    stage('Tests Run') {
            sh:'docker run --name cucumber-httparty cucumber/httparty $@'
        }
    
    }
}




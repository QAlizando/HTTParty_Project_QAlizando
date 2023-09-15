node {

    stage('Docker Build') {
        agent any
        
        sh script:'docker build -t cucumber/httparty .'
    }

    stage('Tests Run') {
        sh script:'docker run --name cucumber-httparty cucumber/httparty $@'
    }
}




node {

    agent { node { label 'linux && nodejs' } }
    
    stage('Creating Workdir') {
        sh script:'mkdir ./reports'
    }
    
    stage('Docker Build') {
        sh script:'docker build . -t cucumber/httparty -f Dockerfile'
    }

    stage('Tests Run') {
        sh script:'docker run -e ENV=${ENV} --name cucumber-httparty cucumber/httparty $@'
    }
}




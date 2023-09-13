node {
    stage('Docker Build') {
        sh script:'docker build . -t cucumber/httparty -f Dockerfile.txt'
    }

    stage('Tests Run') {
        sh script:'docker run -e ENV=${ENV} --name cucumber-httparty cucumber/httparty $@'
    }
}




node {
    stage('Docker Build') {
        sh script:'docker build -t cucumber/httparty .'
    }

    stage('Tests Run') {
        sh script:'docker run -e ENV=${ENV} --name cucumber-httparty cucumber/httparty $@'
    }

    stage('Deleting Docker Container') {
        sh script: 'docker rm $(docker ps -a -q)'
        sh script: 'docker rmi $(docker images -aq)'
    } 
}




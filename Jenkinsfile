node {

    stage('Docker Build') {
        sh script:'docker build -t cucumber-ruby .'
    }

    stage('Tests Run') {
        sh script:'docker run cucumber-ruby'
    }

    stage('Deleting Docker Container') {
        sh script: 'docker rm $(docker ps -a -q)'
        sh script: 'docker rmi $(docker images -aq)'
    } 

}




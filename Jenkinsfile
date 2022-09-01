pipeline {
    agent any
    stages {
                  stage('verify') {
                    steps {
                     git([url: 'https://github.com/paramsme26/docker-repo.git', branch: 'main'])
                     sh 'ls -lhtr'
                     sh 'pwd'
                     sh 'docker --version'
                     sh 'docker images'
                     sh 'docker ps'
        }
    }
                  stage('Build') {
                   steps {
                   sh 'docker build -t parampreetkaur/jenkins:apache2 .'
            }
                }
                stage('Docker test') {
                   steps {
                   sh 'docker run -d -p 8081:80  parampreetkaur/jenkins:apache2'
                 
            }
                }
                stage('Docker Push') {
                   steps {
                   withCredentials([usernamePassword(credentialsId: 'DockerHub', passwordVariable: 'pass', usernameVariable: 'user')]) {
                    sh 'echo $user'
                    sh 'echo ${user}'
                   sh "docker login -u ${user} -p ${pass}"
                   sh 'docker push parampreetkaur/jenkins:apache2'
        }
    }
}

}
}

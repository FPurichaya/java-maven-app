pipeline {
  agent any
  stages {
    stage("copy files to ansible server") {
      steps {
        script {
            echo "copying all neccesary files to ansible control node"
            sshagent(['ansible-server-key']) {
                sh "scp -o StrictHostKeyChecking=no ansible/* root@139.59.104.34:/root"

                withCredentials([sshUserPrivateKey(credentialsId: 'ec2-server-key', keyFileVariable: 'keyfile', usernameVariable: 'user')]) {
                  sh "scp ${keyfile} root@139.59.104.34:/root/~/.ssh-key.pem"
                }              
            }
        }
      }
    }
  }
}
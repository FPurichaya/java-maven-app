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
              sh 'scp $keyfile root@139.59.104.34:~/ssh-key.pem'
            }              
          }
        }
      }
    }

    stage("execute ansible playbook") {
      steps {
        script {
          echo "calling ansible playbook to configure ec2 instances"
          def remote = [:]
          remote.name = "ansible-server"
          remote.host = "139.59.104.34"
          remote.allowAnyHosts = true
          withCredentials([sshUserPrivateKey(credentialsId: 'ansible-server-key', keyFileVariable: 'keyfile', usernameVariable: 'user')]) {
            remote.user = user
            remote.identityFile = keyfile
            sshCommand remote: remote,command: "ls -l"
          }
        }
      }
    }
  }
}
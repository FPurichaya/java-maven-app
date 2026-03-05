/*def gv

pipeline {   
    agent any
    tools {
        maven 'Maven'
    }
    stages {
        stage("init") {
            steps {
                script {
                    gv = load "script.groovy"
                }
            }
        }
        stage("build jar") {
            steps {
                script {
                    gv.buildJar()

                }
            }
        }

        stage("build image") {
            steps {
                script {
                    gv.buildImage()
                }
            }
        }

        stage("deploy") {
            steps {
                script {
                    gv.deployApp()
                }
            }
        }               
    }
} 
*/
pipeline {
    agent any
    stages {
        stage ("test") {
            steps {
                script {
                    echo 'Testing the application...'
                    echo "Executeing pipeline for $BRACH_NAME"
                }
            }
        }
        stage ("build") {
            when {
                expression {
                    BRANCH_NAME == "master"
                }
            }
            steps {
                script {
                    echo 'Building the application...'
                }
            }
        }
        stage ("deploy") {
            when {
                expression {
                    BRANCH_NAME == "master"
                }
            }
            steps {
                script {
                    echo 'Deploying the application...'
                }
            }
        }
    }
}

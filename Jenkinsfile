pipeline {   
    agent any
    parameters 
        choice(name: 'VERSION', choices: ['1.1.0', '1.2.0', '1.3.0'], description: '')
        booleanParam(name: 'executeTests', defaultValue: true, description:'')
    }s
    stages {
        stage("build") {
            steps {
                echo 'building the application...'
                echo "building new version ${NEW_VERSION}"
            }
        }
        stage("test") {
            when {
                expression {
                    param.executeTests
                }
            }
            steps {
                echo 'building the application...'
                }
        }
        stage("deploy") {
            steps {
                script {
                    echo 'Deploying the application...'
                    echo "Deploying version ${params.VERSION}"
                    }
                }
            }
        }               
    }
 

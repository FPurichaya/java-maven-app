#!/usr/bin/env groovy
@Library('jenkins-shared-library@master') retriever: modernSCM(
    [$class: 'GitSCMSource',
    remote: 'https://github.com/FPurichaya/jenkins-shared-library.git',
    credentialsId: '90bf07c7-b9c8-457b-b6a2-73e03f7620c0']
) 

def gv
pipeline {   
    agent any
    tools {
        maven 'maven--3.9'
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
                    buildJar()
                }
            }
        }

        stage("build and push image") {
            steps {
                script {
                    buildImage 'fpurichaya/demo-app:jma-3.0'
                    dockerLogin()
                    dockerPush 'fpurichaya/demo-app:jma-3.0'
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

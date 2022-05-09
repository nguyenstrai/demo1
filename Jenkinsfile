#!/usr/bin/groovy

pipeline {
    agent any
    stages {
        stage("Fix the permission issue") {

            steps {
                sh "sudo chown root:jenkins /run/docker.sock"
            }

        }
        stage('Build Java App') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                sh 'sudo docker build -t simplejavaapp .'
            }
        }

        stage('Scan Docker Image') {
            steps {
                sh 'trivy image simplejavaapp'
            }
        }

    }
}

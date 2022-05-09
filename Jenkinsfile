#!/usr/bin/groovy

pipeline {
    agent any
    stages {

        stage('Build Java App') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t simplejavaapp .'
            }
        }

        stage('Scan Docker Image') {
            steps {
                sh 'trivy image simplejavaapp'
            }
        }

    }
}

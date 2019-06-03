pipeline {
    agent {
		docker {
			image 'ubuntu:latest'
			args '-v /var/run/docker.sock:/var/run/docker.sock'
		}
	}
    stages {
        stage('Check wheather') {
            steps {
                sh 'curl wttr.in'
            }
        }
        stage('test') {
            steps {
                sh 'whoami'
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
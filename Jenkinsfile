pipeline {
    agent {
		docker {
			image 'ubuntu:latest'
			args '-v /var/run/docker.sock:/var/run/docker.sock'
		}
	}
    stages {
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
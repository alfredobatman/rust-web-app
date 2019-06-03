pipeline {
    agent {
		docker {
			image 'ubuntu:latest'
			args '-v /var/run/docker.sock:/var/run/docker.sock'
		}
	}
    stages {
        stage('Check Curl') {
			when {branch 'master'}
				steps {
					sh 'curl --version'
				}
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
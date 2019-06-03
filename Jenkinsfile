pipeline {
	environment {
		REGISTRY = credentials('REGISTRY')		
		REGISTRY_HOST = '18.130.235.14'
	}
	agent any
	stages {
		stage('Docker Registry Log in') {
			steps {
				sh 'docker login ${REGISTRY_HOST} \
					-u ${REGISTRY_USR} -p ${REGISTRY_PSW}'
			}
		}
	}
	stage('Smoke Test') {
		agent{
			dockerfile{
				filename 'dockerfiles/docker-compose.dockerfile'
				args "--net host -v /var/run/docker.sock:/var/run/docker.sock"
			}
		}
		steps {
			sh 'docker-compose up -d'
			sh 'sleep 30'
			sh 'curl --fail -I http://0.0.0.0:8888/health'
		}
		post {
			always {
				sh "docker-compose down"
			}
		}        
	}   	
}
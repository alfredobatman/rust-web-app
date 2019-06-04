pipeline {
	environment {
		REGISTRY = credentials('REGISTRY')		
		REGISTRY_HOST = '18.130.235.14'
	}
	agent any
	stages {
		stage('Docker Compose Up') {
			agent{
				dockerfile{
					filename 'dockerfiles/docker-compose.dockerfile'
					args "--net host -v /var/run/docker.sock:/var/run/docker.sock"
					reuseNode true
				}
			}
			steps {
				sh 'docker-compose up -d'
				sh 'sleep 30'
			}
		}
		stage('Smoke Test') {
			steps {
				sh 'curl --fail -I http://0.0.0.0:8888/health'
			}
		}
		stage('Docker Compose Down') {
			agent{
				dockerfile{
					filename 'dockerfiles/docker-compose.dockerfile'
					args "--net host -v /var/run/docker.sock:/var/run/docker.sock"
					reuseNode true
				}
			}
			steps {
				sh 'docker-compose down'
			}
		}
	}
   	
}
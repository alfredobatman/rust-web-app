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
}
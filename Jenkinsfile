def COLOR_MAP = [ 
	'SUCCESS': 'good',
	'FAILURE': 'danger',
]

pipeline {
	agent any

	tools {
		jdk 'OracleJDK11'
		maven 'Maven3'
	}

	environment {
		registry = 'iad.ocir.io/idlhjo6dp3bd/hello-oke-springboot'
		registryCredential = 'CredencialRegistry'
	}

	stages {
		stage('Build') {
			steps {
				sh 'mvn clean install -DskipTests'
			}
		}

		stage('Test Unitario') {
			steps {
				sh 'mvn test'
			}
		}

		stage('Test Integracion') {
			steps {
				sh 'mvn test'
			}
		}

		stage('Analisis Codigo Checkstyle') {
			steps {
				sh 'mvn checkstyle:checkstyle'
			}
		}
	}
}

pipeline{
    agent any
  
	stages{
	  	stage('Build Stage'){
			steps{
				withMaven(maven:'maven3'){
					sh 'mvn -f pom.xml clean install'
				}
			}
		}
	    stage('SonarQube Analysis'){
	        steps{
	            withSonarQubeEnv('sonar'){
	                sh "mvn -f pom.xml  sonar:sonar"
	            
	            
	        }
	        }
	    }
	}
}

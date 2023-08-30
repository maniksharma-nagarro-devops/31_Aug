pipeline{
    agent any
  
	stages{
	  	stage('Build Stage'){
			steps{
				withMaven(maven:'maven3'){
					
					sh 'mvn -f pom.xml clean package -Dmaven.test.skip'
				}
			}
		}
	    stage('sonar'){
	        steps{
	            withSonarQubeEnv('sonar'){
	                sh "mvn sonar:sonar"
	            
	            
	        }
	        }
	    }
	}
}

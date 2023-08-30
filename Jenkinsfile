pipeline{
    agent any
  
	stages{
	  	stage('Build Stage'){
			steps{
				withMaven(maven:'maven3'){
					
					// sh 'mvn -f pom.xml clean package -Dmaven.test.skip'
					sh 'mvn -f pom.xml install'
				}
			}
		}
	  

		stage('Deploy to artifactory'){
		   steps{
		      rtServer(
		        id: "artifactory-server"
		        )
		        rtUpload(
		            serverId: "artifactory-server",
		            spec: '''{
		                    "files":[
		                    {
		                        "pattern":"*.jar",
		                        "target":"assignment_dev"
		                     }
		                             ]
		            }'''
		        )
		        rtPublishBuildInfo(
		        serverId: "artifactory-server"
		        )
		   }
		}

		stage('Build docker image'){
		steps{
		sh 'docker build -t manik_images_dev:latest .'
		}
		}
			stage('Run docker image'){
		steps{
		sh "chmod +x -R ${env.WORKSPACE}"
		sh "./container_check.sh"
		sh 'docker run --name dev -d manik_images:latest'
		}
		}
	}
}

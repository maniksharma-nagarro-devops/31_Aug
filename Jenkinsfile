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
		                        "target":"assignment"
		                     }
		                             ]
		            }'''
		        )
		        rtPublishBuildInfo(
		        serverId: "artifactory-server"
		        )
		   }
		}
	}
}

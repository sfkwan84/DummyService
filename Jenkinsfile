node('docker-agent') {
	docker_host = "tcp://16.189.58.140:2375"
	registry_url = "https://index.docker.io/v1/"
	docker_credentials_id = "dockerhub-sfkwan"
	image_name = "sfkwan/dummy-service"

	stage('Preparation') { // for display purposes
		// Get some code from a GitHub repository
		git 'https://github.com/sfkwan84/DummyService.git'
		sh "git rev-parse HEAD > .git/commit-id"
		def commit_id = readFile('.git/commit-id').trim()
		println commit_id
	}
   
	withEnv(["DOCKER_HOST=${docker_host}"]) {
		stage 'Build'
		container = docker.build("${image_name}:${BUILD_NUMBER}", '.')
		
		stage('Push image')
		docker.withRegistry("${registry_url}", "${docker_credentials_id}") {			
			container.push()
		}	
	}
}
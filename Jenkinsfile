node('docker-agent') {
   stage('Preparation') { // for display purposes
      // Get some code from a GitHub repository
      git 'https://github.com/sfkwan84/DummyService'
      sh "git rev-parse HEAD > .git/commit-id"
      def commit_id = readFile('.git/commit-id').trim()
      println commit_id
   }
   stage('Build') {
      sh "hostname"
      withEnv(['DOCKER_HOST=tcp://16.189.57.76:2375']) {
	    sh "docker build -t sfkwan/dummy-service:${BUILD_NUMBER} ."
      }
   }
}
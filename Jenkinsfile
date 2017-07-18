node {
	def node_app
        
	stage('Build Docker image') {
		node_app = docker.build("nodeexpress", '.')
	}

	stage('Push') {
		docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials'){
		node_app.push("${env.BUILD_NUMBER}")
		node_app.push("latest")
		}
	}
}

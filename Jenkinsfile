node {
	def node_app
        
	stage('Build Docker image') {
		node_app = docker.build("adaniilidis/nodeexpress", '.')
	}

	stage('Push') {
		docker.withRegistry('https://registry.hub.docker.com', 'dolufemi'){
		node_app.push("${env.BUILD_NUMBER}")
		node_app.push("latest")
		}
	}
}

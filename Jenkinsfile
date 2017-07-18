node {
	def node_app
        checkout scm

	stage('Build Docker image') {
		node_app = docker.build("nodeexpress", '.')
	}

	stage('Push') {
		node_app.push()
                node_app.push("latest")	
	}
}

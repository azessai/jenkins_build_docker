node{
  def app

    stage('Clone') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("az-nginx:${env.BUILD_ID}")
    }

    stage('Test image') {
        docker.image("az-nginx:${env.BUILD_ID}").withRun('-p 80:80') { c ->
            sh 'docker ps'
            sh 'curl localhost'
	}
    }
}

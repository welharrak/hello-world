pipeline {
  agent any
  stages {
    stage('Delete all unused images') {
      steps {
        sh 'echo "y" | docker system prune'
      }
    }

    stage('Stop httpserver running containers') {
      steps {
        sh 'docker stop httpserver || echo "there is no httpserver running container"'
      }
    }

    stage('Build image') {
      steps {
        sh 'docker build -t hello-walid:latest .'
      }
    }

    stage('Run the image created') {
      steps {
        sh 'docker run --rm --name httpserver -h httpserver -p 80:80 -d hello-walid:latest'
      }
    }

  }
}
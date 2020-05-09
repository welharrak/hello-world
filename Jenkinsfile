pipeline {
  agent any
  stages {
    stage('Delete all unused images') {
      steps {
        sh 'echo "y" | docker system prune'
      }
    }

    stage('Stop all running containers') {
      steps {
        sh 'docker stop $(docker ps -a -q)'
      }
    }

    stage('Build image') {
      steps {
        sh 'docker build -t hello-walid:test .'
      }
    }

    stage('Run the image created') {
      steps {
        sh 'docker run --rm -p 80:80 -d hello-walid:test'
      }
    }

  }
}
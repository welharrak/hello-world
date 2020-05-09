pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh '''#!/bin/sh



# delete unused images
echo "y" | docker system prune
# stop all running containers
docker stop $(docker ps -a -q)
# build image
docker build -t hello-walid:test .
'''
      }
    }

    stage('Run Image') {
      steps {
        sh '''#/bib/sh # run the image created
docker run --rm -p 80:80 -d hello-walid:test'''
      }
    }

  }
}
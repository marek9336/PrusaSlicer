pipeline {
  agent any
  stages {
    stage('mk_build') {
      steps {
        sh '''pwd
ls
mkdir -p build
cd build
pwd
ls'''
      }
    }

    stage('vypis_slozek') {
      steps {
        sh '''pwd
ls'''
      }
    }

    stage('cmake') {
      steps {
        cmake(installation: 'cmake', arguments: '--help')
      }
    }

    stage('error') {
      steps {
        cmakeBuild(installation: 'cmake', cleanBuild: true)
      }
    }

  }
}
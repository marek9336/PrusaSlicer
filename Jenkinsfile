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
        cmakeBuild(installation: 'InSearchPath', buildType: 'debug', cleanBuild: true, buildDir: 'build', generator: 'Ninja')
      }
    }

  }
}
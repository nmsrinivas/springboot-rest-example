pipeline {
 agent any
stages {
  stage('CodeCheckOut') {
    steps {
      script {
       checkout scm
       def mvnHome = tool 'maven-3'
       def javaHome = tool 'JAVA_1.8'
       
       }
      }
     }      
      stage('Build customer app code'){
        steps {
        script {
          try{
          sh "mvn clean install"
           currentBuild.result = 'SUCCESS'
          } catch(Exception err){
          currentBuild.result = 'FAILURE'
         }
       }
      }
     }
       stage('Test') {
            steps {
                /* `make check` returns non-zero on test failures,
                * using `true` to allow the Pipeline to continue nonetheless
                */
                sh 'make check || true'
                junit '**/target/*.xml'
            }
        }
    }
}

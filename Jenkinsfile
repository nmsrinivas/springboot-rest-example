pipeline {
 agent any
stages {
  stage('CodeCheckOut') {
    steps {
      script {
       checkout scm
       /*def mvnHome = tool 'maven-3'
       def javaHome = tool 'JAVA_1.8'*/  
       }
      }
     }      
      stage('Build customer app code'){
        steps {
        script {
       /*sh 'sudo yum -y install unzip java-1.8.0-openjdk'*/
       sh 'sudo apt-get update -y'
       sh 'sudo apt install openjdk-8-jdk'
      
      /* sh 'sudo yum -y install maven'*/
         sh 'sudo apt install maven'
       sh 'mvn clean install -DskipTests'
       }
      }
     }
     stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t nmsrinivas/springbootapp .'
      }
    }
}

node {
  stage('SCM') {
    checkout scm
  }
  stage('SonarQube Analysis') {
    withSonarQubeEnv('sonarqube-10.7') {
      dir('sonar-scanner-gradle/gradle-basic') {
        sh "pwd"
        sh "ls"
        sh "./gradlew sonar"
      }
    }
  }
}

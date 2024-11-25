node {
  stage('SCM') {
    checkout scm
  }
  stage('SonarQube Analysis') {
    withSonarQubeEnv() {
      sh "cd sonar-scanner-gradle/gradle-basic"
      sh "./gradlew sonar"
    }
  }
}
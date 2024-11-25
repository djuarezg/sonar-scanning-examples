node {
  stage('SCM') {
    checkout scm
  }
  stage('SonarQube Analysis') {
    withSonarQubeEnv("sonarqube-10.7") {
      sh "cd sonar-scanner-gradle/gradle-basic"
      sh "./gradlew sonar"
    }
  }
}

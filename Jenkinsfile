node {
  stage('SCM') {
    checkout scm
  }
  stage('SonarQube Analysis') {
    def scannerHome = tool 'SonarScanner for .NET2'

    withCredentials([string(credentialsId: 'SONAR_AUTH_TOKEN', variable: 'SONAR_AUTH_TOKEN')]) {
      withSonarQubeEnv('sonarqube-10.7') {
        dir('sonar-scanner-msbuild/CSharpProject') {
          sh "dotnet ${scannerHome}/SonarScanner.MSBuild.dll begin /k:\"djuarezg_sonar-scanning-examples_6c0b8682-5833-4b02-8402-ecdd19bfe859\" /d:sonar.host.url=\"https://djuarezg.ngrok.dev\" /d:sonar.token=\"${SONAR_AUTH_TOKEN}\""
          sh "dotnet build"
          sh "dotnet ${scannerHome}/SonarScanner.MSBuild.dll end"
        }
      }
    }
  }
}

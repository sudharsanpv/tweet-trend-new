pipeline {
    agent {
        node {
            label 'maven'
        }
    }
environment {
    PATH = "/opt/apache-maven-3.9.3/bin:$PATH"
}
    stages {
        stage("build"){
            steps {
                 echo "----------- build started ----------"
                sh 'mvn clean deploy -Dmaven.test.skip=true'
                 echo "----------- build complted ----------"
            }
        }
        stage("Unit"){
            steps {
                 echo "----------- Unit test started ----------"
                sh 'mvn surefire-report:report'
                 echo "----------- Unit test  complted ----------"
            }
        }


    stage('SonarQube analysis') {
    environment {
        scannerHome = tool 'dev-sonar-scanner'

    }
    steps{
    
    withSonarQubeEnv('dev-sonar-server') { // If you have configured more than one global server connection, you can specify its name
      sh "${scannerHome}/bin/sonar-scanner"
    }
    }   

    }

}

}


pipeline {
    agent any 
    environment {
        // Using bat command for Windows (equivalent to shell)
        CC = """${bat(
                returnStdout: true,
                script: 'echo clang'
            )}"""
        // Using returnStatus in a Windows-compatible way
        EXIT_STATUS = """${bat(
                returnStatus: true,
                script: 'exit /b 1'
            )}"""
    }
    stages {
        stage('Example') {
            environment {
                DEBUG_FLAGS = '-g'
            }
            steps {
                bat 'set' // Use 'set' to list environment variables in Windows
            }
        }
    }
}

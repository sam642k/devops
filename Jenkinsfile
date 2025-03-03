pipeline {
    agent any
    environment {
        demo = credentials('demo-secret')
    }
    stages {
        stage('Example stage 1') {
            steps {
                bat 'set'
            }
        }
    }
}

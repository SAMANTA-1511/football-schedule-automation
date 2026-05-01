pipeline {
    agent any

    stages {
        stage('Build Image') {
            steps {
                // We will use 'football-app' as the name everywhere
                sh 'docker build -t football-app:latest .'
            }
        }
        stage('Run Container') {
            steps {
                // The '|| true' ignores the error if the container doesn't exist yet
                sh 'docker rm -f football-container || true'
                sh 'docker run -d --name football-container -p 8081:80 football-app:latest'
            }
        }
    }
}
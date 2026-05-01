pipeline {
    agent any

    stages {
        stage('Build Image') {
            steps {
                // Check if the quote is closed here
                sh 'docker build -t football-schedule:latest .'
            }
        }
        stage('Run Container') {
            steps {
                // We stop the old one first so there is no conflict
                sh 'docker rm -f football-schedule-container || true'
                sh 'docker run -d --name football-schedule-container -p 8081:80 foot-ball:latest'
            }
        }
    }
}
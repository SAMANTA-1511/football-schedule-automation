pipeline{
   any agent 
   Stages{
    stage('Build Image') {
        steps {
            sh 'docker build -t football-schedule:latest .'
        }
    }
    stage('Deploy Site') {
        steps {
                // Remove the old container if it exists
                sh 'docker rm -f football-container || true'
                // Run the new one using the 'foot-ball' image you just built
                sh 'docker run -d --name football-container -p 8081:80 foot-ball:latest'
            }
        }

   }
}

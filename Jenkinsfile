pipeline {
    agent any

    stages {
        stage('Push to Development Branch') {
            steps {
                script {
                    // Update and push to development branch
                    bat '''
						git checkout main
						git pull origin main --rebase
                        git checkout development
                        git pull origin development --rebase
						git rebase main
                        git add .
                        git diff --cached --quiet || git commit -m "Automated development push"
                        git push origin development
                    '''
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Docker build
                    bat '''
                        docker build -t rkz-resto:latest .
                    '''
                }
            }
        }
    }

    post {
        always {
            echo 'Pipeline completed!'
        }
    }
}

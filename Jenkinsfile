pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/ashishsutar31/HostelManagment1.git'
            }
        }
        stage('Build with Maven') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ashishsutar/ashish-hostel-management .'
            }
        }
        stage('Push to DockerHub') {
            steps {
                sh '''
                    docker login -u ashishsutar -p Ashish@9630
                    docker push ashishsutar/ashish-hostel-management
                '''
            }
        }
        stage('Run Docker Container') {
            steps {
                sh '''
                    docker rm -f ashish-hostel-container || true
                    docker run -d --name ashish-hostel-container -p 8081:8080 ashishsutar/ashish-hostel-management
                '''
            }
        }
    }
}

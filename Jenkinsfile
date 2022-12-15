node {
    def app
    stage('Clone repository') {
        git 'https://github.com/leejw-lu/OssAutomation.git'
    }
    stage('Build image') {
        app = docker.build("jiwoo22/prbasedjw")
    }
    stage('Test image') {
        app.inside {
            
        }
    }
    stage('Push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'dockerhub2') {
           app.push("${env.BUILD_NUMBER}")
           app.push("latest")
        }
    }
}

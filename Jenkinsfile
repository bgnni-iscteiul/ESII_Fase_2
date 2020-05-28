def dockeruser = "bin0206"
def imagename = "openjdk:7"
def container = "helloworld"
node {
   echo 'Building Apache Docker Image'

stage('Git Checkout') {
    git 'https://github.com/bgnni-iscteiul/ESII_Fase_2'
    }
    
stage('Build Docker Image'){
     powershell "docker build -t  ${imagename} ."
    }
        
stage ('Runing Container to test built Docker Image'){
    powershell "docker run -dit --name ${container} -p 8888:80 ${imagename}"
    }
    
stage('Tag Docker Image'){
    powershell "docker tag ${imagename} ${env.dockeruser}/openjdk:7"
    }

stage('Docker Login and Push Image'){
    withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', passwordVariable: 'dockerpasswd', usernameVariable: 'dockeruser')]) {
    powershell "docker login -u ${dockeruser} -p ${dockerpasswd}"
    }
    powershell "docker push ${dockeruser}/openjdk:7"
    }

}

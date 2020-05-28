def dockeruser = "bin0206"
def imagename = "helloworld"
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

stage('Docker Login and Push Image'){
    withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', passwordVariable: 'dockerpasswd', usernameVariable: 'dockeruser')]) {
    powershell "docker login -u ${dockeruser} -p ${dockerpasswd}"
    }
    powershell "docker push ${dockeruser}/helloworld"
    }

}

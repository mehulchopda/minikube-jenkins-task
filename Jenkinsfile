//Jenkinsfile
node {

  stage('Preparation') {
    //Installing kubectl in Jenkins agent
    //sh 'curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl'
	//sh 'chmod +x ./kubectl && mv kubectl /usr/local/sbin'

	//Clone git repository
        https://github.com/mehulchopda/minikube-jenkins-task.git
  }

  stage('Integration') {

     //Run script to install mongodb custer
     sh 'cd scripts'
     sh './generate.sh'

     //run mongodb tests
     sh 'kubectl exec -it mongod-0 -c mongod-container bash'
     sh 'mongo'
     > db.getSiblingDB('admin').auth("main_admin", "abc123");
     > use test;
     > db.testcoll.insert({a:1});
     > db.testcoll.insert({b:2});
     > db.testcoll.find();


  }
  stage('Production') {
     //Run script to install mongodb custer
     sh 'cd scripts'
     sh './generate.sh'

     //run mongodb tests
     sh 'kubectl exec -it mongod-0 -c mongod-container bash'
     sh 'mongo'
     > db.getSiblingDB('admin').auth("main_admin", "abc123");
     > use test;
     > db.testcoll.insert({a:1});
     > db.testcoll.insert({b:2});
     > db.testcoll.find();

}
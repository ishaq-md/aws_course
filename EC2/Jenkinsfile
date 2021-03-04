pipeline {

    /*parameters {
        string(name: 'environment', defaultValue: 'ec2', description: 'Workspace/environment file to use for deployment')
        string(name: 'apply', defaultValue: 'apply', description: 'plan, apply, destroy -force, plan -destroy')
        booleanParam(name: 'autoApprove', defaultValue: false, description: 'Automatically run apply after generating plan?')

    }
    */


     environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

   agent  any
  
    stages {
        stage('checkout') {
            steps {
                 script{
                        dir("ec2")
                        {
                            git "https://github.com/ishaqmdgcp/EC2.git"
                        }
                    }
                }
            }

         stage('Provision infrastructure') {
            steps {
                dir("") 
                {
                sh 'terraform init'
                sh 'terraform plan'
                /*sh 'terraform destroy -auto-approve' */
            }
        }
    }

  }
}

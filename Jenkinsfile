pipeline {
    agent any
    stages {
        //checkout the Github code
        stage('checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'GitCreds', url: 'https://github.com/lokpavan03/InfraAutoTFCAPIWFJenPar.git']]])
            }
        }  
        //API hit the Terrraform cloud with CURL and retreiving Terraform API Token from the Azure Key Vault
        stage('API Workflow') {
            options{
                azureKeyVault(credentialID: 'AzureSP', keyVaultURL: 'https://jenkinstf.vault.azure.net/', secrets: [[envVariable: 'Token', name: 'TFAPITOKENAD', secretType: 'Secret']])
            }
            steps {
                sh 'chmod +x ./org.sh'
                sh './org.sh
            }
        }                  
                    
    }
}

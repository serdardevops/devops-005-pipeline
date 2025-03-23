
terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 5.0"
    }
  }
}


variable "ssh_password" {
  description = "JenkinsServer için SSH parolası"
  type        = string
  sensitive   = true 
}

resource "null_resource" "jenkins_server" {

  connection {
    type     = "ssh"
    host     = "192.168.1.179"   
    user     = "ubuntu"          
    password = var.ssh_password  
    port     = 22                
  }
}
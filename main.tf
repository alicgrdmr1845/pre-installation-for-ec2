#main.tf 

provider "aws" {
  region     = "eu-central-1"
  shared_credentials_files = /*your shared access key*/
}


resource "aws_instance" "example" {
  ami = "ami-0767046d1677be5a0"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.main.id]
  key_name= "aws_key"
  user_data     =  /*the file wanted to be pre installed*/
}

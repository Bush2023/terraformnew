 resource "aws_lightsail_instance" "example" {
  name              = "example-instance"
   bundle_id         = "nano_2_0"      # You can choose a different bundle if needed
  

  user_data = <<-EOF
    #!/bin/bash
    sudo yum install httpd -y
    sudo systemctl start httpd
    sudo systemctl enable httpd
    echo "<h1>This Server is created using Terraform</h1>" | sudo tee /var/www/html/index.html
    EOF
 
}

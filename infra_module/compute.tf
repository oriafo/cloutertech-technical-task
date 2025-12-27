
# EC2 Instance (in private subnet)
resource "aws_instance" "web_server" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.private_subnet.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  user_data_replace_on_change = true


  user_data = <<-EOF
              #!/bin/bash
              exec > /var/log/user-data.log 2>&1
              set -x

              apt update -y
              apt install -y nginx

              systemctl start nginx
              systemctl enable nginx

              cat <<HTML > /var/www/html/index.html
              <html>
              <head>
                <title>DevOps Interview Task</title>
              </head>
              <body style="font-family: Arial; text-align: center; margin-top: 50px;">
                <h1>Abraham Ibharunujele</h1>
                <p>Terraform AWS Web Server</p>
              </body>
              </html>
              HTML
              EOF

  tags = { Name = "terraform-web-server" }
}


resource "aws_instance" "hashcat_box" {
    ami           = data.aws_ami.latest-ubuntu.id
    instance_type = var.instance_type
    associate_public_ip_address = true
    user_data = file("user_data.sh")

    tags = {
        Name = var.name
        gpu = "yes"
    }
}
# Create lightsail lab environment
resource "aws_lightsail_instance" "simpleStack" {
    name                = "simpleStack"
    availability_zone   = "us-west-2b"
    blueprint_id        = "ubuntu_16_04_2"
    bundle_id           = "nano_2_0"
}

resource "aws_lightsail_key_pair" "jd_key_paid" {
    name                = "importing"
    public_key          = "${file("~/.ssh/id_rsa.pub")}"
}
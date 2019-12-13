# Create lightsail lab environment
resource "aws_lightsail_instance" "simpleStack" {
    name                = "simpleStack"
    availability_zone   = "us-west-2b"
    blueprint_id        = "ubuntu_16_04_2"
    bundle_id           = "nano_2_0"
}
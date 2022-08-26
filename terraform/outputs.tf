#
# Output
#

# AMI ID

output "image_id" {
  value = data.aws_ami.ubuntu.id
}

output "lw_server_id" {
  value = [aws_instance.lw-ctf.*.id]
}

output "lw_server_public_ip" {
  value = [aws_instance.lw-ctf.*.public_ip]
}

# networking details

output "vpc_id" {
  value = aws_vpc.default.id
}

output "subnet_public_id" {
  value = aws_subnet.public.id
}

output "subnet_private_id" {
  value = aws_subnet.private.id
}

output "security_group_lw_id" {
  value = aws_security_group.lw.id
}

output "security_group_ssh_id" {
  value = aws_security_group.ssh.id
}

output "route_internet_access_id" {
  value = aws_route.internet_access.route_table_id
}
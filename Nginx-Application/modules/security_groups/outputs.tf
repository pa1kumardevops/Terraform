output "pritunl_sg_id" {
  value = aws_security_group.pritunl.id
}

output "nginx_app_sg_id" {
  value = aws_security_group.nginx_app.id
}

output "alb_sg_id" {
  value = aws_security_group.alb.id
}

output "website_url" {
  description = "Public address of the website"
  value       = "http://${aws_instance.website.public_ip}"
}
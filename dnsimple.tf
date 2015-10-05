# Add ALIAS record of GitHub page to the domain 
resource "dnsimple_record" "deeeet-com" {
  domain = "var.domain"
  name = "@"
  value = "${var.gh_pages_url}"
  type = "ALIAS"
  ttl = 600
}


# Add A record of GitHub page to the domain 
resource "dnsimple_record" "deeeet-com" {
  domain = "deeeet.com"
  name = "@"
  value = "192.30.252.153"
  type = "A"
  ttl = 600
}

# Add A record of GitHub page to the domain 
resource "dnsimple_record" "deeeet-com" {
  domain = "deeeet.com"
  name = "@"
  value = "192.30.252.154"
  type = "A"
  ttl = 600
}


# Add ALIAS record of GitHub page to the domain 
resource "dnsimple_record" "alias-record" {
  domain = "${var.domain}"
  name = "@"
  value = "${var.gh_pages_url}"
  type = "ALIAS"
  ttl = 600
}


# Add A record of GitHub page to the domain 
resource "dnsimple_record" "a-record1" {
  domain = "${var.domain}"
  name = "@"
  value = "192.30.252.153"
  type = "A"
  ttl = 600
}

# Add A record of GitHub page to the domain 
resource "dnsimple_record" "a-record2" {
  domain = "${var.domain}"
  name = "@"
  value = "192.30.252.154"
  type = "A"
  ttl = 600
}


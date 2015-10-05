[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](/LICENSE)

This is collection of `.tf` files to setup custom apex domain for your GitHub pages. This does exactly same thing as the official documentation (["Tips for configuring an A record with your DNS provider"](https://help.github.com/articles/tips-for-configuring-an-a-record-with-your-dns-provider/)) with [Terraform](https://terraform.io/), [Atlas](https://atlas.hashicorp.com/) and [DNSimple](https://dnsimple.com). 

## Usage

It's better to use Atlas to store DNSimple API token and `.tfstate` on there. To use Atlas, you need to get API token and set it via env var.

```bash
$ export ATLAS_TOKEN=""
```

To Setup remote state storage on Atlas.

```bash
$ terraform remote config -backend-config "name=<username>/dns-gh-pages"
```

Upload terraform module to an Atlas server for remote infra management.
Only first time, you will be asked DNSimple API token, email and domain name to register. 

```bash
$ terraform push -name "<uername>/dns-gh-pages"
```

## Confirm

Check DNS is correctly configure or not. 

```bash
$ dig example.com +nostats +nocomments +nocmd
```

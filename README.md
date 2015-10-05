# Setup GitHub pages DNS with Terrafrom

This is collection of `.tf` files to setup custom domain for your GitHub pages. 

```bash
$ export ATLAS_TOKEN=""
```

Setup remote state storage.

```bash
$ terraform remote config -backend-config "name=tcnksm/dns-gh-pages"
```

Upload terraform module to an Atlas server for remote infra management.

```bash
$ terraform push -name "tcnksm/dns-gh-pages"
```

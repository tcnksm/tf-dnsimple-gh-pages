# Setup DNS with Terraform

```bash
$ export ATLAS_TOKEN=""
```

```bash
$ terraform remote config -backend-config "name=tcnksm/dns-gh-pages"
```

```bash
$ terraform push -name "tcnksm/dns-gh-pages"
```

# Continuous Resume

Any changes made to `src/*.tex` trigger a Github Action that build a PDF and deploy to your `resume` subdomain

[Get Started](GETTING_STARTED.md)

# Technical Details

This project a filewatcher to watch for changes to `src/*.tex` files, and then runs `latex` container to build the PDF.

## Infrastructure
Use terraform to create the infrastructure for the project

```sh
cd infra
terraform init
terraform apply
```

You'll then have to edit the github repository pages settings to use the new subdomain


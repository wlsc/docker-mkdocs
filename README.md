# Ad-hoc MkDocs Docker image

This is an ad-hoc Docker image to operate MkDocs without a need to install Python (i.e., on CI pipelines).

# How to run

Entrypoint of the Docker image is set to **mkdocs**.

## Generate a new project

You can generate new project named `project` into host-mounted folder `/home/john/mkdocs` by executing:

```bash
docker run -v /home/john/mkdocs:/data mkdocs new project
```

## Serve existing project

You can serve existing project on build-in MkDocs server. In the below example your project will be accessible on Docker's IP-address and port 8000.

```bash
 docker run -v /home/john/mkdocs/project:/data -p 8000:8000 mkdocs serve
```

# LICENSE 

Licensed under [MIT License](LICENSE).
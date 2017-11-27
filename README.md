# Install BOSH Lite
Go to [https://bosh.io/docs/bosh-lite.html](https://bosh.io/docs/bosh-lite.html) and install BOSH Lite on your local machine.

# Spin Up a Concourse

```bash
    wget https://github.com/concourse/concourse/releases/download/v3.6.0/concourse-lite.yml
    bosh create-env concourse-lite.yml
```
# Clone the repository

```bash
    git clone https://github.com/difoul/a9s-cncourse-ci.git
```

# Update CF variables
Update the file **vars.yml**
```bash
    cd a9s-cncourse-ci
    vi var.yml
```

```bash
cf_user: <YOUR_CF_USERNAME>
cf_password: <YOUR_CF_PASSWORD>
cf_space: <CF_SPACE>
cf_org: <CF_ORG>
```

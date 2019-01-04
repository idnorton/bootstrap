## Scaleway

### Environment

Visit the Scaleway [User Info](https://cloud.scaleway.com/#/account) page
and note your *Organization ID*

Now go to the [Scaleway Credentials](https://cloud.scaleway.com/#/credentials)
and create a new token. Make a note of your *Secret key*. Once done these should be set in your environment to be able to work with terraform:
```
export SCALEWAY_ORGANIZATION="xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
export SCALEWAY_REGION="par1"
export SCALEWAY_TOKEN="xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
```

### Plan and apply

Once environment is set, one can simply check and then apply the plan:
```
terraform plan
terraform apply
```

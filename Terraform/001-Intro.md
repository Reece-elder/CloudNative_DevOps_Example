# Terraform - Infrastructure As Code

Terraform allows you to use high level descriptive programming to manage infrastructure across a variety of the providers
- AWS
- GCP
- Azure

'Environment Drift' - over time an environment ends up in a unique configuration that is difficult to recreate
Using IaC you can match an environment and recreate it exactly

Uses a similar code pattern for creating GCP, AWS or Azure meaning if you know how to use AWS its easy to learn GCP/Azure etc. 

## Use Cases

### Multi Tier apps 
- Common for apps to have multiple tiers w/ different requirements and dependencies
- Dependencies/requirements for each tier can be provisioned separately (and updated separately)

### Disposable Environments
- Staging environments are a clone of the prod environment created before it is deployed
- Quick and easy to create a staging or testing environment that matches specifications
- Longer to create a one off environment with increasing returns, can be quickly built AND collapsed

### MultiCloud Deployments
- Can configure multiple cloud providers within one deployment
- Multi-Cloud deployments added for extra fault tolerance 
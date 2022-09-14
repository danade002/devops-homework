# Devops-Homework

This homework will do a sample project deployment, monitoring, and troubleshooting on AWS.

## Step 1 - Deployment

### Prepared for base infrastructures

Use [terraform](https://www.terraform.io/) to create and manage your AWS resources.

Please create a terraform repo, which will store terraform configuration. You can store `State` in [terraform-cloud](https://cloud.hashicorp.com/products/terraform)(It's free).

Use terraform to manage the required AWS resources, such as RDS (PostgreSQL), ECS, CloudFront, CloudWatch, and so on (Choose based on your deployment scenario, and AWS Free Plan is enough).

Prepared 2 environments: `stage` and `prod`.

`unxz init/tf.sql.xz` and restore this sql dump.

### CI / CD workflow

You may copy `api/` directory to a new repo, build and deploy related information can be found in `api/README.md`.

Please add github actions with next workflow:

- base workflow is: `build` --> `deploy`
- only push to `stage` or `prod` branch will trigger `deploy` task, and deploy to the corresponding environment.
- push or pull request to other branches only trigger `build` step.

After deployment, you can check with your stage and prod environment if working.

## Step 2 - Troubleshooting

We found some queries too slow, like:

```graphql
{
  allHistories(
    chainId: 1
    contract: "0x960b236A07cf122663c4303350609A66A7B288C0"
    begin: "1650000000"
    max: 500
  ) {
    from
    to
    tokenAddress
    tokenType
    txHash
    event
    details
    timestamp
  }
}
```

Please try to find the reason and resolve this issue.

## Requirements

Email us with next contents:

- your homework github links (terraform repo and api source code repo, please make sure both are public)
- Make screenshots with terraform-cloud to let us know terraform executed successfully
- Post stage and prod links
- You can make push and pull requests to trigger your github action yourself and verify it works correctly
- Describe how you find the queries slow reason and resolve, also please post the comparison of response time before and after your optimization

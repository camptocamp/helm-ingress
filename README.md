# [Kubernetes](https://kubernetes.io/) [HELM chart](https://helm.sh/) to create an Ingress

See values for details.

## Blue/Green switch

When using Blue/Green applications, we will have 3 ingress:

- one to serve the blue application on blue URL
- one to serve the green application on green URL
- one to serve the application (blue or green one) on production URL

For the production ingress, we create a dedicated service to be able to do blue-green switch.

To switch between blue and green applications, we need to set appropriated selector in production service using variable `applicationReleaseName` in values.yaml.

See https://github.com/camptocamp/helm-ingress/wiki/Blue-Green-switch

## Contributing

Install the pre-commit hooks:

```bash
pip install pre-commit
pre-commit install --allow-missing-config
```

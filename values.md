# HELM Ingress configuration

## Properties

- **`nameOverride`** _(string)_: Override the name of the Ingress.
- **`fullnameOverride`** _(string)_: Override the fullname of the Ingress.
- **`annotations`** _(object)_: Annotations to add to the Ingress.
  - **Items** _(string)_
- **`tls`** _(object)_: TLS configuration.
  - **`secretNamePrefix`** _(string)_: Prefix of the secret name.
- **`hostsGroups`** _(array)_: Hosts groups.
  - **Items** _(object)_: Hosts group.
    - **`name`** _(string)_: Name of the hosts group, used in the Ingress name.
    - **`annotations`** _(object)_: Specific annotations to the group.
      - **Items** _(string)_
    - **`tls`** _(boolean)_: Enable TLS for the group. Default: `true`.
    - **`hosts`** _(array)_: The hosts name.
      - **Items** _(string)_: The host name.
- **`paths`** _(object)_: The paths configuration.
  - **Items** _(object)_
    - **`path`** _(string)_: The path.
    - **`serviceRelease`** _(string)_: The name of the release of the service, by default same as current release.
    - **`serviceName`** _(string)_: The name of the service (prefixed with the <release name>-).
    - **`servicePort`** _(integer)_: The port of the service. Default: `80`.

## Definitions

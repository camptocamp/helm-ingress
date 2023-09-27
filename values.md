# HELM Ingress configuration

## Properties

- **`global`**
- **`common`**
- **`nameOverride`**: Refer to _[#/definitions/nameOverride](#definitions/nameOverride)_.
- **`fullnameOverride`**: Refer to _[#/definitions/fullnameOverride](#definitions/fullnameOverride)_.
- **`serviceName`**: Refer to _[#/definitions/serviceName](#definitions/serviceName)_.
- **`releaseTrunc`**: Refer to _[#/definitions/releaseTrunc](#definitions/releaseTrunc)_.
- **`prefixTrunc`**: Refer to _[#/definitions/prefixTrunc](#definitions/prefixTrunc)_.
- **`labels`**: Refer to _[#/definitions/labels](#definitions/labels)_.
- **`annotations`**: Refer to _[#/definitions/annotations](#definitions/annotations)_.
- **`applicationReleaseName`** _(string)_: The name of the release of the application, used to do the blue-green switch.
- **`createService`** _(boolean)_: Create the service, the service is used to do the blue-green switch. Default: `false`.
- **`tls`** _(object)_: TLS configuration. Cannot contain additional properties.
  - **`secretNamePrefix`** _(string)_: Prefix of the secret name.
- **`hostsGroups`** _(array)_: Defined a group of hosts that will be in the same Ingress.
  - **Items** _(object)_: Cannot contain additional properties.
    - **`name`** _(string)_: Name of the hosts group, used in the Ingress name.
    - **`annotations`** _(object)_: Specific annotations to the group. Can contain additional properties.
      - **Additional Properties** _(string)_
    - **`tls`** _(boolean)_: Enable TLS for the group. Default: `true`.
    - **`hosts`** _(array)_: The hosts name.
      - **Items** _(string)_: The host name.
- **`paths`** _(object)_: The paths configuration. Can contain additional properties.
  - **Additional Properties** _(object)_: Cannot contain additional properties.
    - **`nameOverride`**: Refer to _[#/definitions/nameOverride](#definitions/nameOverride)_.
    - **`fullnameOverride`**: Refer to _[#/definitions/fullnameOverride](#definitions/fullnameOverride)_.
    - **`serviceName`**: Refer to _[#/definitions/serviceName](#definitions/serviceName)_.
    - **`releaseTrunc`**: Refer to _[#/definitions/releaseTrunc](#definitions/releaseTrunc)_.
    - **`prefixTrunc`**: Refer to _[#/definitions/prefixTrunc](#definitions/prefixTrunc)_.
    - **`labels`**: Refer to _[#/definitions/labels](#definitions/labels)_.
    - **`annotations`**: Refer to _[#/definitions/annotations](#definitions/annotations)_.
    - **`type`** _(string)_: The type of the service. Default: `"ClusterIP"`.
    - **`port`** _(integer)_: Default: `80`.
    - **`targetPort`** _(['string', 'integer'])_
    - **`protocol`** _(string)_: Default: `"TCP"`.
    - **`portName`** _(string)_: The name of the port. Default: `"http"`.
    - **`externalName`** _(string)_: The external name of the service.
    - **`serviceRelease`** _(string)_
    - **`servicePort`** _(integer)_
    - **`selector`** _(object)_: The selector of the Pod. Can contain additional properties.
      - **Additional Properties** _(string)_
    - **`path`** _(string)_: The path of the service.

## Definitions

- <a id="definitions/nameOverride"></a>**`nameOverride`** _(string)_: [helm-common] Override the name.
- <a id="definitions/fullnameOverride"></a>**`fullnameOverride`** _(string)_: [helm-common] Override the fullname.
- <a id="definitions/releaseTrunc"></a>**`releaseTrunc`** _(integer)_: [helm-common] The release trunk length. Default: `20`.
- <a id="definitions/prefixTrunc"></a>**`prefixTrunc`** _(integer)_: [helm-common] The prefix trunk length (release and chart name). Default: `40`.
- <a id="definitions/labels"></a>**`labels`** _(object)_: [helm-common] Pod labels. Can contain additional properties.
  - **Additional Properties** _(string)_
- <a id="definitions/annotations"></a>**`annotations`** _(object)_: [helm-common] Pod annotations. Can contain additional properties.
  - **Additional Properties** _(string)_
- <a id="definitions/serviceName"></a>**`serviceName`** _(string)_: [helm-common] The name of the service (not Kubernetes service), this will postfix the name.

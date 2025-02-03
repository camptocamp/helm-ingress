# HELM Ingress configuration

## Properties

- **`global`** _(object)_: Can contain additional properties.
  - **`releaseNameOverride`**: Refer to _[#/definitions/releaseNameOverride](#definitions/releaseNameOverride)_.
  - **`releaseTrunc`**: Refer to _[#/definitions/releaseTrunc](#definitions/releaseTrunc)_.
  - **`nameTrunc`**: Refer to _[#/definitions/nameTrunc](#definitions/nameTrunc)_.
  - **`prefixTrunc`**: Refer to _[#/definitions/prefixTrunc](#definitions/prefixTrunc)_.
- **`common`**
- **`nameOverride`**: Refer to _[#/definitions/nameOverride](#definitions/nameOverride)_.
- **`fullnameOverride`**: Refer to _[#/definitions/fullnameOverride](#definitions/fullnameOverride)_.
- **`releaseNameOverride`**: Refer to _[#/definitions/releaseNameOverride](#definitions/releaseNameOverride)_.
- **`serviceName`**: Refer to _[#/definitions/serviceName](#definitions/serviceName)_.
- **`releaseTrunc`**: Refer to _[#/definitions/releaseTrunc](#definitions/releaseTrunc)_.
- **`nameTrunc`**: Refer to _[#/definitions/nameTrunc](#definitions/nameTrunc)_.
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
      - **Additional properties** _(string)_
    - **`tls`** _(boolean)_: Enable TLS for the group. Default: `true`.
    - **`hosts`** _(array)_: The hosts name.
      - **Items** _(string)_: The host name.
- **`paths`** _(object)_: The paths configuration. Can contain additional properties.
  - **Additional properties** _(object)_: Cannot contain additional properties.
    - **`nameOverride`**: Refer to _[#/definitions/nameOverride](#definitions/nameOverride)_.
    - **`fullnameOverride`**: Refer to _[#/definitions/fullnameOverride](#definitions/fullnameOverride)_.
    - **`releaseNameOverride`**: Refer to _[#/definitions/releaseNameOverride](#definitions/releaseNameOverride)_.
    - **`serviceName`**: Refer to _[#/definitions/serviceName](#definitions/serviceName)_.
    - **`releaseTrunc`**: Refer to _[#/definitions/releaseTrunc](#definitions/releaseTrunc)_.
    - **`nameTrunc`**: Refer to _[#/definitions/nameTrunc](#definitions/nameTrunc)_.
    - **`prefixTrunc`**: Refer to _[#/definitions/prefixTrunc](#definitions/prefixTrunc)_.
    - **`labels`**: Refer to _[#/definitions/labels](#definitions/labels)_.
    - **`annotations`**: Refer to _[#/definitions/annotations](#definitions/annotations)_.
    - **`type`** _(string)_: The type of the service. Default: `"ClusterIP"`.
    - **`port`** _(integer)_: Default: `80`.
    - **`targetPort`** _(['string', 'integer'])_
    - **`protocol`** _(string)_: Default: `"TCP"`.
    - **`portName`** _(string)_: The name of the port. Default: `"http"`.
    - **`appProtocol`** _(string)_: The application protocol.
    - **`externalName`** _(string)_: The external name of the service.
    - **`serviceRelease`** _(string)_
    - **`servicePort`** _(integer)_
    - **`selector`** _(object)_: The selector of the Pod. Can contain additional properties.
      - **Additional properties** _(string)_
    - **`path`** _(string)_: The path of the service.

## Definitions

- <a id="definitions/nameOverride"></a>**`nameOverride`** _(string)_: [helm-common] Override the name (can be in the service or values).
- <a id="definitions/fullnameOverride"></a>**`fullnameOverride`** _(string)_: [helm-common] Override the fullname (can be in the service or values).
- <a id="definitions/releaseNameOverride"></a>**`releaseNameOverride`** _(string)_: [helm-common] Override the the release name (can be in the service, values or global).
- <a id="definitions/releaseTrunc"></a>**`releaseTrunc`** _(integer)_: [helm-common] The release name trunk length (can be in the service, values or global). Default: `20`.
- <a id="definitions/nameTrunc"></a>**`nameTrunc`** _(integer)_: [helm-common] The chart name trunk length (can be in the service, values or global). Default: `63`.
- <a id="definitions/prefixTrunc"></a>**`prefixTrunc`** _(integer)_: [helm-common] The prefix trunk length (release and chart name) (can be in the service, values or global). Default: `40`.
- <a id="definitions/labels"></a>**`labels`** _(object)_: [helm-common] Pod labels. Can contain additional properties.
  - **Additional properties** _(string)_
- <a id="definitions/annotations"></a>**`annotations`** _(object)_: [helm-common] Pod annotations. Can contain additional properties.
  - **Additional properties** _(string)_
- <a id="definitions/serviceName"></a>**`serviceName`** _(string)_: [helm-common] The name of the service (not Kubernetes service), this will postfix the name.

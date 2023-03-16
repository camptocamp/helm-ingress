{{- define "ingress.serviceName" -}}
{{- if .path.serviceRelease }}
{{- printf "%s-%s" .path.serviceRelease .path.serviceName | trunc 53 | trimSuffix "-" }}
{{- else -}}
{{- printf "%s-%s" .root.Release.Name .path.serviceName | trunc 53 | trimSuffix "-" }}
{{- end -}}
{{- end }}

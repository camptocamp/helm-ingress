{{- define "ingress.serviceName" -}}
{{- if .path.serviceRelease }}
{{- .path.serviceRelease }}-{{ .path.serviceName }}
{{- else -}}
{{ include "common.fullname" . }}-{{ .path.serviceName }}
{{- end -}}
{{- end }}


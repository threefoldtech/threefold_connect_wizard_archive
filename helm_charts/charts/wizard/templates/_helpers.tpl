{{- define "wizard.IMAGE" -}}
{{- .Values.global.WIZARD_IMAGE -}}
{{- end -}}


{{- define "wizard.CONFIG_NAME" -}}
{{- printf "%s-%s" .Release.Name "docker-config-wizard"  -}}
{{- end -}}


{{- define "wizard.FULL_NAME" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "wizard.IMAGE_PULL_SECRET" -}}
{{- printf "{\"auths\": {\"%s\": {\"auth\": \"%s\"}}}" .Values.global.DOCKER_REGISTRY (printf "%s:%s" .Values.global.DOCKER_USERNAME .Values.global.DOCKER_PASSWORD | b64enc) | b64enc }}
{{- end }}

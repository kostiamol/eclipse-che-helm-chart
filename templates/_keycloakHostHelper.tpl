{{- define "keycloakHost" }}
{{- if eq .Values.global.serverStrategy "default-host" }}
{{- printf "%s" .Values.global.ingressDomain }}
{{- else if eq .Values.global.serverStrategy "single-host" }}
{{- printf "che-%s.%s" .Release.Namespace .Values.global.ingressDomain }}
{{- else }}
{{- printf "keycloak-%s.%s" .Release.Namespace .Values.global.ingressDomain }}
{{- end }}
{{- end }}
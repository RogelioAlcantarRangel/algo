# Mapa de Controles SOC 2

## Security (Seguridad)
| Control | Implementación | Verificador |
|---------|---------------|-------------|
| AC-2 | IAM con roles definidos | Terraform + OPA |
| AC-7 | Bloqueo de cuenta x3 intentos | Auth0/AWS Cognito |
| IA-2 | MFA para aprobadores | Auth0 TOTP |
| IA-5 | Password policy 12 chars | Auth0 Policy |
| SC-8 | TLS 1.3 en todas las APIs | OpenSSL config |
| SC-12 | Cifrado AES-256 | KMS/GPG |

## Availability (Disponibilidad)
| Control | Implementación | Verificador |
|---------|---------------|-------------|
| AU-2 | Logging estructurado JSON | Fluentd/ELK |
| AU-12 | Trail de auditoría completo | CloudTrail/Wazuh |
| AU-13 | Backup diario | AWS Backup |
| AU-14 | Recovery testing | Script de prueba |

## Processing Integrity (Integridad)
| Control | Implementación | Verificador |
|---------|---------------|-------------|
| CI-2 | Validación de datos | Schema validation |
| CI-3 | Idempotencia | UUIDs + deduplication |
| CI-7 | Reconciliación | Job diario de conciliación |

## Confidentiality (Confidencialidad)
| Control | Implementación | Verificador |
|---------|---------------|-------------|
| SC-27 | Clasificación de datos | Tags en recursos |
| AC-4 | Acceso restringido | Políticas IAM |
| MP-6 | Eliminación segura | Wipe + certificado |

## Privacy (Privacidad)
| Control | Implementación | Verificador |
|---------|---------------|-------------|
| PV-1 | Consentimiento explícito | Formulario + registro |
| PV-2 | Derecho al olvido | API de eliminación |
| PV-3 | Mapeo de datos PII | Inventory tool
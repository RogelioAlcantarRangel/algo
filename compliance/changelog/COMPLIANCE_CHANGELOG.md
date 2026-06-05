# Changelog de Compliance

Todas las modificaciones que impactan controles SOC 2.

## [Unreleased]

## [1.2.0] - 2026-05-30

### Agregado
- Nuevo rol "Aprobador N2" con límite $10,000
- Campo de razón rechazo en órdenes de compra
- Integración con Vault para secretos de proveedores

### Changed - Compliance Impact
- **AC-2**: Ampliado scope de roles de aprobación
- **AU-2**: Nuevo tipo de log `purchase_rejected`
- **CI-2**: Validación de RFC en proveedores externos

### Removed
- Soporte para API v1 (sin cifrado)

## [1.1.0] - 2026-05-15

### Agregado
- MFA obligatorio para todos los usuarios
- Reporte mensual de auditoría
- Retención automática de documentos fiscales (7 años)

### Changed - Compliance Impact
- **IA-2**: MFA ahora es obligatorio
- **AU-12**: Nuevos eventos de seguridad
- **SC-8**: Upgrade TLS 1.2 → 1.3

### Security
- Fix: Buffer overflow en parser de XML de proveedores
- CVE-2026-XXXX: Actualización de librería de cifrado

## How to Document Changes

Use this template para cambios que impacten compliance:

```
### Changed - Compliance Impact
- **[CONTROL]**: Descripción del cambio y por qué
- **[CONTROL]**: ...

### Security (si aplica)
- Fix: descripción del fix
- CVE-XXXX-XXXX: actualización
```

### Controls Reference
- AC: Access Control
- AU: Audit and Accountability  
- IA: Identification and Authentication
- SC: Security and Privacy Controls
- CI: System and Information Integrity
- PV: Privacy Controls
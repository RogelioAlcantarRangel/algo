# Template: Documentar cambios de compliance

## Plantilla para CHANGELOG

```markdown
## [VERSION] - FECHA

### Agregado
- Nueva funcionalidad

### Changed - Compliance Impact
- **[CONTROL_ID]**: Descripción del cambio
  - Impacto: [Alto|Medio|Bajo]
  - Ver: policies/[archivo].rego

### Security (si aplica)
- Fix: vulnerabilidad corregida
- CVE-XXXX-XXXX: actualización crítica
```

## Controles SOC 2 Reference

| Prefijo | Nombre |
|---------|--------|
| AC | Access Control |
| AU | Audit and Accountability |
| IA | Identification and Authentication |
| SC | Security and Privacy Controls |
| CI | System and Information Integrity |
| PV | Privacy Controls |
| BC | Business Continuity |
| IR | Incident Response |

## Checklist Pre-Deploy

- [ ] ¿Cambia roles o permisos? (AC-2)
- [ ] ¿Modifica logging? (AU-2, AU-12)  
- [ ] ¿Cambia cifrado o TLS? (SC-8, CR-1)
- [ ] ¿Impacta procesamiento de datos? (CI-2, CI-3)
- [ ] ¿Modifica datos personales? (PV-1, PV-2)
- [ ] ¿Ejecutar `make compliance-test`?
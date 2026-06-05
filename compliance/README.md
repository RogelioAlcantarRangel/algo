# Framework de Compliance SOC 2 - Sistema MRO

## Estructura

```
compliance/
├── POLICY.md              # Políticas oficiales
├── CONTROLS.md            # Mapa de controles SOC 2
├── CHANGELOG.md           # Historial de cambios de compliance
├── changelog/
│   └── COMPLIANCE_CHANGELOG.md
├── controls/
│   ├── CONTROLS.md
│   └── INVENTORY.md
├── templates/
│   ├── CHANGELOG_TEMPLATE.md
│   └── INCIDENT_REPORT.md
├── reports/
│   └── TRIMESTRE_T2_2026.md
└── ci-cd/
    ├── compliance-check.sh
    └── soc2-compliance.yml
```

## Uso Rápido

```bash
# Verificar cumplimiento local
./compliance/ci-cd/compliance-check.sh

# Ejecutar en CI/CD
make compliance-test
```

## Controles Implementados

| Categoría | Controles | Estado |
|-----------|-----------|--------|
| Access Control | AC-2, AC-7 | ✅ |
| Audit | AU-2, AU-12 | ✅ |
| Security | SC-8, SC-12, SC-27 | ✅ |
| Privacy | PV-1, PV-2, PV-3 | ⚠️ 93% |

## Próximos Pasos

1. Completar mapeo PV-3 (PII proveedores)
2. Implementar reconciliación CI-7
3. Optimizar backup AU-13
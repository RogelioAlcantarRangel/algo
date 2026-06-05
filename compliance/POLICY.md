# Política de Compliance SOC 2 - Sistema MRO de Compras

## 1. Propósito
Este documento establece los controles de compliance para el sistema de compras MRO, garantizando confidencialidad, seguridad, procesabilidad, disponibilidad y privacidad.

## 2. Alcance
Aplica a todos los usuarios, desarrolladores, administradores y proveedores del sistema de compras MRO.

## 3. Roles y Responsabilidades

### 3.1 Roles definidos
| Rol | Responsabilidades | Nivel de acceso |
|-----|------------------|-----------------|
| Solicitante | Crear solicitudes de compra | Read/Write propias |
| Aprobador N1 | Aprobar hasta $1,000 | Read/Write ámbito |
| Aprobador N2 | Aprobar ilimitado | Full read, limited write |
| Administrador | Gestión total del sistema | Full access |
| Auditor | Solo lectura + reportes | Read-only |

### 3.2 Responsabilidades
- **Equipo de TI**: Implementar y mantener controles técnicos
- **Gerencia**: Aprobar políticas y rendición de cuentas
- **Usuarios**: Seguir procedimientos y reportar incidentes

## 4. Controles de Seguridad

### 4.1 Autenticación (AC-2)
- MFA obligatorio para roles de aprobación
- Password policy: mínimo 12 caracteres, complejidad
- Bloqueo automático después de 3 intentos fallidos

### 4.2 Auditoría (AU-2, AU-12)
- Logging de todas las acciones críticas
- Retención mínima de 1 año
- Monitoreo en tiempo real de actividades sospechosas

### 4.3 Cifrado (CR-1)
- Datos en reposo: AES-256
- Datos en tránsito: TLS 1.3
- Secretos gestionados via Vault/KMS

## 5. Gestión de Incidentes
- Reporte dentro de 2 horas
- Investigación en 24 horas
- Comunicación a stakeholders en 48 horas

## 6. Actualización de Políticas
- Revisión trimestral
- Cambios documentados con impacto de compliance
- Aprobación por comité de seguridad
#!/bin/bash
# compliance-check.sh - Verificador automático de cumplimiento SOC 2

set -e

echo "🔍 Running SOC 2 Compliance Checks..."

# Colores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Contadores
PASS=0
FAIL=0

check_control() {
    local control=$1
    local description=$2
    local file=$3
    
    if [ -f "$file" ]; then
        echo -e "${GREEN}✅ $control: $description${NC}"
        ((PASS++))
    else
        echo -e "${RED}❌ $control: $description - File missing: $file${NC}"
        ((FAIL++))
    fi
}

echo ""
echo "=== ACCESS CONTROL (AC) ==="
check_control "AC-2" "Roles definidos" "compliance/POLICY.md"
check_control "AC-7" "Bloqueo de cuenta" "compliance/POLICY.md"

echo ""
echo "=== AUDIT (AU) ==="
check_control "AU-2" "Logging estructurado" "compliance/controls/CONTROLS.md"
check_control "AU-12" "Trail de auditoría" "compliance/controls/CONTROLS.md"

echo ""
echo "=== SECURITY (SC) ==="
check_control "SC-8" "TLS 1.3" "compliance/controls/CONTROLS.md"
check_control "SC-12" "Cifrado AES-256" "compliance/POLICY.md"

echo ""
echo "=== PRIVACY (PV) ==="
check_control "PV-1" "Consentimiento" "compliance/controls/CONTROLS.md"
check_control "PV-2" "Derecho al olvido" "compliance/controls/CONTROLS.md"

echo ""
echo "=== SUMMARY ==="
echo -e "${GREEN}Passed: $PASS${NC}"
echo -e "${RED}Failed: $FAIL${NC}"

if [ $FAIL -gt 0 ]; then
    echo -e "${RED}❌ Compliance check FAILED${NC}"
    exit 1
else
    echo -e "${GREEN}✅ All compliance checks PASSED${NC}"
    exit 0
fi
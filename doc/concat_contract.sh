#!/bin/bash

# === CẤU HÌNH ===
SRC_DIR="../contracts"
OUT_FILE="../contracts_1inch.txt"

# === XÓA FILE CŨ (nếu có) ===
rm -f "$OUT_FILE"

# === GOM TOÀN BỘ FILE .sol ===
echo "📄 Đang gom toàn bộ *.sol từ $SRC_DIR vào $OUT_FILE..."

find "$SRC_DIR" -type f -name "*.sol" | sort | while read file; do
    echo "==================== $file ====================" >> "$OUT_FILE"
    cat "$file" >> "$OUT_FILE"
    echo -e "\n\n" >> "$OUT_FILE"
done

echo "✅ Đã lưu tất cả mã nguồn vào: $OUT_FILE"

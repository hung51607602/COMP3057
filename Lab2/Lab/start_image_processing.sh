#!/bin/bash

# 圖像處理環境啟動腳本
# Image Processing Environment Startup Script

echo "🚀 啟動圖像處理環境..."
echo "========================================="

# 獲取腳本所在目錄
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ENV_DIR="$SCRIPT_DIR/image_processing_env"

# 檢查虛擬環境是否存在
if [ ! -d "$ENV_DIR" ]; then
    echo "❌ 錯誤: 找不到虛擬環境 $ENV_DIR"
    echo "請確保在正確的目錄中運行此腳本"
    exit 1
fi

# 激活虛擬環境
echo "📦 激活虛擬環境..."
source "$ENV_DIR/bin/activate"

# 檢查激活是否成功
if [[ "$VIRTUAL_ENV" == "$ENV_DIR" ]]; then
    echo "✅ 環境激活成功！"
    echo "📋 環境信息："
    echo "   - Python: $(python --version)"
    echo "   - 位置: $VIRTUAL_ENV"

    # 顯示可用的Python庫版本
    echo "   - NumPy: $(python -c "import numpy; print(numpy.__version__)")"
    echo "   - OpenCV: $(python -c "import cv2; print(cv2.__version__)")"
    echo "   - Matplotlib: $(python -c "import matplotlib; print(matplotlib.__version__)")"
    echo "   - Scikit-image: $(python -c "import skimage; print(skimage.__version__)")"

    echo ""
    echo "🎯 現在你可以："
    echo "   1. 運行 'jupyter notebook' 啟動Jupyter Notebook"
    echo "   2. 運行 'jupyter lab' 啟動JupyterLab"
    echo "   3. 在Jupyter中選擇 'Image Processing Python' kernel"
    echo "   4. 運行你的圖像處理代碼"
    echo ""
    echo "📝 要退出環境，運行: deactivate"
    echo "========================================="

    # 保持shell在激活狀態
    exec "$SHELL"
else
    echo "❌ 環境激活失敗"
    exit 1
fi
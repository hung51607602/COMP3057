# 🖼️ 圖像處理環境使用指南

## 📋 環境概述

這是一個專門為圖像處理和計算機視覺設計的Python虛擬環境，包含了所有必需的庫和工具，確保代碼能穩定運行。

## 🛠️ 環境配置

### 核心庫版本
- **Python**: 3.12.8
- **NumPy**: 1.26.4 (穩定版本)
- **OpenCV**: 4.10.0 (兼容版本)
- **Matplotlib**: 3.10.6
- **Scikit-image**: 0.25.2
- **Jupyter**: 完整套件

### 特殊配置
- ✅ 解決了NumPy版本衝突問題
- ✅ OpenCV與其他庫完全兼容
- ✅ 已註冊為Jupyter kernel
- ✅ 支持所有圖像處理操作

## 🚀 使用方法

### 方法1: 使用啟動腳本 (推薦)
```bash
./start_image_processing.sh
```

### 方法2: 手動激活
```bash
source image_processing_env/bin/activate
jupyter notebook
# 或
jupyter lab
```

## 📝 在Jupyter中使用

1. **啟動Jupyter**:
   - Notebook: `jupyter notebook`
   - Lab: `jupyter lab`

2. **選擇正確的Kernel**:
   - 在Jupyter中選擇 **"Image Processing Python"**
   - 這確保使用正確的環境和庫版本

3. **驗證環境**:
   ```python
   import numpy as np
   import matplotlib.pyplot as plt
   from skimage import data
   import cv2

   print(f"NumPy: {np.__version__}")
   print(f"OpenCV: {cv2.__version__}")
   ```

## 📁 可用的學習文件

### 1. Image_Processing_Complete_Learning_Guide.ipynb
- **描述**: 完整的圖像處理學習指南
- **內容**: 從基礎到進階的所有概念
- **特色**: 包含50個代碼cell，詳細註解

### 2. Image_Processing_Annotated_Guide.ipynb
- **描述**: 詳細註解版學習指南
- **內容**: 每行代碼都有中文解釋
- **適合**: 完全初學者

### 3. Class_Exercise_Images_as_Data.ipynb
- **描述**: 原始課堂練習
- **內容**: 核心概念和實戰練習

## 🔧 故障排除

### 問題1: 庫導入失敗
**解決方案**: 確保選擇了正確的Jupyter kernel
```bash
# 檢查可用kernels
jupyter kernelspec list

# 應該看到 "image_processing" kernel
```

### 問題2: NumPy版本錯誤
**解決方案**:
```bash
source image_processing_env/bin/activate
pip show numpy  # 應該顯示 1.26.4
```

### 問題3: OpenCV無法使用
**解決方案**:
```bash
source image_processing_env/bin/activate
python -c "import cv2; print(cv2.__version__)"  # 應該顯示 4.10.0
```

## 📊 功能測試

運行以下代碼測試所有功能：

```python
import numpy as np
import matplotlib.pyplot as plt
from skimage import data
import cv2

# 測試基礎功能
astronaut = data.astronaut()
gray = np.dot(astronaut[...,:3], [0.299, 0.587, 0.114]).astype(np.uint8)
resized = cv2.resize(astronaut, (256, 256))

print("✅ 所有功能正常！")
```

## 🎯 學習建議

1. **從基礎開始**: 先運行 `Image_Processing_Annotated_Guide.ipynb`
2. **逐步進階**: 然後學習 `Image_Processing_Complete_Learning_Guide.ipynb`
3. **實戰練習**: 最後完成 `Class_Exercise_Images_as_Data.ipynb`

## 💡 重要提醒

- ⚠️ **總是選擇正確的Jupyter kernel**
- ⚠️ **不要在此環境外安裝新庫**
- ⚠️ **如需新功能，在虛擬環境中安裝**
- ⚠️ **退出時運行 `deactivate`**

## 🆘 獲得幫助

如果遇到問題：
1. 檢查是否激活了正確的環境
2. 確認Jupyter kernel選擇
3. 驗證庫版本是否正確
4. 重新啟動Jupyter

---

**🎉 現在你擁有一個完全乾淨、穩定的圖像處理環境！**
# 图片资源说明 - Image Assets Documentation

## 📁 目录结构 - Directory Structure

```
images/
├── README.md                    # 本说明文件
├── events/                      # 活动照片
│   ├── huaxia-fashion-show/     # 华夏有衣汉服秀
│   ├── cherrychase-elementary/  # CherryChase小学活动
│   ├── jin-yong-birthday/       # 金庸诞辰特别活动
│   ├── sunnyvale-spring-fest/   # Sunnyvale春节游园
│   ├── singing-valley/          # 载歌在谷游园活动
│   ├── water-lantern-fest/      # 水灯节
│   ├── half-dome-hanfu/         # 会当凌绝顶
│   ├── multicultural-kids/      # 和各族小朋友合影
│   └── sky-deity-blessings/     # 天官赐福
├── culture/                     # 文化相关图片
│   ├── hanfu-dressing/          # 汉服穿着
│   ├── makeup-tutorials/        # 汉服妆造
│   ├── hanfu-recovery/          # 汉服复原
│   └── wallpapers/              # 国风壁纸
├── community/                    # 社区照片
│   ├── highlights/               # 社团风采
│   └── group-photos/             # 集体合影
└── icons/                        # 图标和装饰元素
    ├── social-media/             # 社交媒体图标
    └── decorative/               # 装饰性图标
```

## 🎯 图片来源说明 - Image Sources

### 主要活动照片 - Main Event Photos
这些图片来自 [硅谷汉服社 Chinese Culture In High Tech Community](https://sites.google.com/view/chinesecultureinhightech) 网站：

1. **华夏有衣** - 汉服服装秀
2. **CherryChase小学活动** - 文化教育活动
3. **金庸诞辰特别活动** - 文学纪念活动
4. **Sunnyvale春节游园** - 传统节日庆祝
5. **载歌在谷游园活动** - 文化交流活动
6. **水灯节** - 传统节日活动
7. **会当凌绝顶** - 户外汉服摄影
8. **和各族小朋友合影** - 多元文化交流
9. **天官赐福** - 传统文化展示

### 使用建议 - Usage Recommendations

1. **版权注意** - 使用前请确保获得适当的授权
2. **图片优化** - 建议压缩图片以提高网站加载速度
3. **响应式设计** - 提供多种尺寸以适应不同设备
4. **Alt文本** - 为所有图片添加描述性alt文本以提高可访问性

## 📱 图片规格建议 - Image Specifications

### 缩略图 - Thumbnails
- 尺寸: 300x200px
- 格式: WebP (推荐) 或 JPEG
- 质量: 80-85%

### 中等尺寸 - Medium
- 尺寸: 800x600px
- 格式: WebP (推荐) 或 JPEG
- 质量: 85-90%

### 大图 - Large
- 尺寸: 1200x900px
- 格式: WebP (推荐) 或 JPEG
- 质量: 90-95%

### 原始尺寸 - Original
- 保持原始分辨率
- 格式: 原始格式
- 用于下载或详细查看

## 🔧 技术实现 - Technical Implementation

### Jekyll 图片引用
```html
<!-- 基本引用 -->
<img src="{{ site.baseurl }}/images/events/huaxia-fashion-show/main.jpg" 
     alt="华夏有衣汉服秀" 
     class="event-image">

<!-- 响应式图片 -->
<picture>
  <source srcset="{{ site.baseurl }}/images/events/huaxia-fashion-show/main.webp" type="image/webp">
  <source srcset="{{ site.baseurl }}/images/events/huaxia-fashion-show/main.jpg" type="image/jpeg">
  <img src="{{ site.baseurl }}/images/events/huaxia-fashion-show/main.jpg" 
       alt="华夏有衣汉服秀" 
       class="event-image">
</picture>
```

### CSS 样式建议
```css
.event-image {
  max-width: 100%;
  height: auto;
  border-radius: 8px;
  box-shadow: 0 4px 8px rgba(0,0,0,0.1);
  transition: transform 0.3s ease;
}

.event-image:hover {
  transform: scale(1.02);
}

.image-gallery {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 20px;
  margin: 20px 0;
}
```

## 📝 更新日志 - Update Log

- **2024年** - 创建图片目录结构
- **待更新** - 添加实际活动照片
- **待更新** - 添加文化相关图片
- **待更新** - 添加社区照片

---

**传承文化精髓，引领科技创新** 🐉⚡

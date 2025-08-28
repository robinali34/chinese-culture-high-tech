# 中华文化·高科技 (Chinese Culture in High Tech)

一个展示中华传统文化与现代高科技融合的现代化网站项目。

## 🌟 项目特色

- **文化传承**: 展示中华优秀传统文化的现代价值
- **科技创新**: 融合前沿技术，推动文化数字化转型
- **响应式设计**: 支持各种设备，提供最佳用户体验
- **Jekyll支持**: 基于Jekyll静态网站生成器，易于维护和扩展

## 🚀 快速开始

### 本地开发

1. **安装依赖**
   ```bash
   # 安装Ruby和Bundler
   gem install bundler
   
   # 安装项目依赖
   bundle install
   ```

2. **启动本地服务器**
   ```bash
   bundle exec jekyll serve
   ```

3. **访问网站**
   打开浏览器访问 `http://localhost:4000`

### 构建生产版本

```bash
bundle exec jekyll build
```

构建后的文件将生成在 `_site` 目录中。

## 🏗️ 项目结构

```
chinese-culture-high-tech/
├── _config.yml          # Jekyll配置文件
├── _layouts/            # 页面布局模板
│   ├── default.html     # 默认布局
│   └── post.html        # 博客文章布局
├── _includes/           # 可重用的页面组件
│   ├── navigation.html  # 导航栏
│   └── footer.html      # 页脚
├── _posts/              # 博客文章
├── _pages/              # 静态页面
├── css/                 # 样式文件
├── js/                  # JavaScript文件
├── images/              # 图片资源
└── index.html           # 首页
```

## 🌐 部署到GitHub Pages

### 自动部署

项目已配置GitHub Actions工作流，推送代码到main分支时会自动构建和部署。

### 手动部署

1. 在GitHub仓库设置中启用GitHub Pages
2. 选择"GitHub Actions"作为部署源
3. 推送代码到main分支

## 📝 添加新内容

### 创建新博客文章

在 `_posts/` 目录中创建新的Markdown文件，文件名格式为：`YYYY-MM-DD-title.md`

```markdown
---
layout: post
title: "文章标题"
date: 2024-01-01
categories: [分类]
tags: [标签1, 标签2]
author: "作者名"
---

文章内容...
```

### 创建新页面

在 `_pages/` 目录中创建新的HTML文件，添加适当的front matter：

```html
---
layout: default
title: "页面标题"
description: "页面描述"
permalink: /page-url/
---

页面内容...
```

## 🎨 自定义主题

项目使用自定义CSS主题，主要样式文件位于：
- `css/style.css` - 主要样式
- `css/responsive.css` - 响应式设计

## 🔧 技术栈

- **静态网站生成器**: Jekyll 4.3.0
- **CSS框架**: 自定义CSS + 响应式设计
- **JavaScript**: 原生JavaScript
- **图标**: Font Awesome 6.0
- **字体**: Google Fonts (Noto Sans SC, Inter)
- **部署**: GitHub Pages + GitHub Actions

## 📱 响应式支持

- 桌面端 (1200px+)
- 平板端 (768px - 1199px)
- 移动端 (320px - 767px)

## 🌍 多语言支持

- 中文 (简体)
- 英文 (部分内容)

## 🤝 贡献指南

1. Fork 项目
2. 创建特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 打开 Pull Request

## 📄 许可证

本项目采用 MIT 许可证 - 查看 [LICENSE](LICENSE) 文件了解详情。

## 📞 联系我们

- 邮箱: info@chineseculturehightech.com
- 项目主页: [GitHub Repository](https://github.com/yourusername/chinese-culture-high-tech)

## 🙏 致谢

感谢所有为中华文化传承和科技创新做出贡献的伙伴们！

---

**传承文化精髓，引领科技创新** 🐉⚡

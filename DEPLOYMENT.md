# 部署指南 - Deployment Guide

## 🚀 GitHub Pages 部署

### 自动部署 (推荐)

项目已配置 GitHub Actions 工作流，推送代码到 main 分支时会自动构建和部署。

1. **推送代码到 GitHub**
   ```bash
   git add .
   git commit -m "Update site with Jekyll support"
   git push origin main
   ```

2. **启用 GitHub Pages**
   - 进入 GitHub 仓库设置
   - 找到 "Pages" 选项
   - 选择 "GitHub Actions" 作为部署源

3. **等待部署完成**
   - GitHub Actions 会自动构建 Jekyll 站点
   - 部署完成后，网站将在 `https://yourusername.github.io/chinese-culture-high-tech` 上可用

### 手动部署

如果需要手动部署，可以按以下步骤操作：

1. **本地构建**
   ```bash
   ./deploy.sh build
   ```

2. **上传到 GitHub Pages**
   - 将 `_site` 目录中的内容上传到 `gh-pages` 分支
   - 或在仓库设置中启用 GitHub Pages 并选择分支

## 🔧 本地开发

### 启动本地服务器

```bash
./deploy.sh serve
```

网站将在 `http://localhost:4000` 上运行，支持实时重载。

### 构建生产版本

```bash
./deploy.sh build
```

构建后的文件将生成在 `_site` 目录中。

### 清理构建文件

```bash
./deploy.sh clean
```

## 📁 项目结构

```
chinese-culture-high-tech/
├── _config.yml          # Jekyll 配置文件
├── _layouts/            # 页面布局模板
├── _includes/           # 可重用的页面组件
├── _posts/              # 博客文章
├── _pages/              # 静态页面
├── css/                 # 样式文件
├── js/                  # JavaScript 文件
├── images/              # 图片资源
├── .github/workflows/   # GitHub Actions 配置
└── index.html           # 首页
```

## 🌐 自定义域名

如果需要使用自定义域名：

1. 在 GitHub Pages 设置中添加自定义域名
2. 创建 `CNAME` 文件，内容为你的域名
3. 配置 DNS 记录指向 GitHub Pages

## 📝 添加新内容

### 创建新博客文章

在 `_posts/` 目录中创建新的 Markdown 文件：

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

在 `_pages/` 目录中创建新的 HTML 文件：

```html
---
layout: default
title: "页面标题"
description: "页面描述"
permalink: /page-url/
---

页面内容...
```

## 🔍 故障排除

### 常见问题

1. **构建失败**
   - 检查 `_config.yml` 语法
   - 确保所有必要的插件已安装
   - 查看构建日志中的错误信息

2. **页面显示 404**
   - 检查 `permalink` 设置
   - 确保文件路径正确
   - 验证 Jekyll 配置

3. **样式不显示**
   - 检查 CSS 文件路径
   - 确保 `baseurl` 设置正确
   - 验证文件是否被正确复制到 `_site` 目录

### 获取帮助

如果遇到问题，可以：

1. 查看 Jekyll 官方文档
2. 检查 GitHub Actions 构建日志
3. 在 GitHub Issues 中提问

## 📚 相关链接

- [Jekyll 官方文档](https://jekyllrb.com/)
- [GitHub Pages 文档](https://pages.github.com/)
- [GitHub Actions 文档](https://docs.github.com/en/actions)
- [Jekyll 主题](https://jekyllthemes.io/)

---

**传承文化精髓，引领科技创新** 🐉⚡

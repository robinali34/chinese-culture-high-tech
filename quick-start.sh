#!/bin/bash

# Quick Start Script for Chinese Culture in High Tech Website
# This script helps you get started with the project

echo "🚀 中华文化·高科技网站 - 快速启动脚本"
echo "Chinese Culture in High Tech - Quick Start Script"
echo "=================================================="

# Check if Python is available
if command -v python3 &> /dev/null; then
    echo "✅ Python 3 已安装 (Python 3 is installed)"
    PYTHON_CMD="python3"
elif command -v python &> /dev/null; then
    echo "✅ Python 已安装 (Python is installed)"
    PYTHON_CMD="python"
else
    echo "❌ Python 未安装 (Python not installed)"
    echo "请安装 Python 3 或使用其他本地服务器"
    echo "Please install Python 3 or use another local server"
fi

# Check if Node.js is available
if command -v node &> /dev/null; then
    echo "✅ Node.js 已安装 (Node.js is installed)"
    NODE_AVAILABLE=true
else
    echo "❌ Node.js 未安装 (Node.js not installed)"
    NODE_AVAILABLE=false
fi

echo ""
echo "📁 项目文件结构 (Project Structure):"
echo "├── index.html          # 主页面 (Main page)"
echo "├── css/                # 样式文件 (CSS files)"
echo "├── js/                 # JavaScript 文件 (JavaScript files)"
echo "├── pages/              # 其他页面 (Other pages)"
echo "├── images/             # 图片资源 (Image assets)"
echo "├── README.md           # 项目说明 (Project documentation)"
echo "├── DEPLOYMENT.md       # 部署指南 (Deployment guide)"
echo "└── package.json       # 项目配置 (Project configuration)"
echo ""

echo "🌐 启动本地服务器 (Start Local Server):"
echo ""

if [ "$PYTHON_CMD" != "" ]; then
    echo "使用 Python (Using Python):"
    echo "  $PYTHON_CMD -m http.server 8000"
    echo ""
fi

if [ "$NODE_AVAILABLE" = true ]; then
    echo "使用 Node.js (Using Node.js):"
    echo "  npx serve ."
    echo "  或 (or): npm start"
    echo ""
fi

echo "📱 在浏览器中访问 (Open in browser):"
echo "  http://localhost:8000"
echo ""

echo "🔧 开发命令 (Development Commands):"
echo "  npm install          # 安装依赖 (Install dependencies)"
echo "  npm run build        # 构建项目 (Build project)"
echo "  npm run test         # 运行测试 (Run tests)"
echo "  npm run dev          # 开发模式 (Development mode)"
echo ""

echo "📚 下一步 (Next Steps):"
echo "1. 启动本地服务器 (Start local server)"
echo "2. 在浏览器中查看网站 (View website in browser)"
echo "3. 自定义内容和样式 (Customize content and styles)"
echo "4. 部署到 GitHub Pages (Deploy to GitHub Pages)"
echo ""

echo "📖 更多信息请查看 (For more information, see):"
echo "  README.md - 项目说明 (Project documentation)"
echo "  DEPLOYMENT.md - 部署指南 (Deployment guide)"
echo ""

echo "🎉 祝您使用愉快！(Enjoy using!)"
echo "=================================================="

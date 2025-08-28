#!/bin/bash

# 中华文化·高科技 - 部署脚本
# Chinese Culture in High Tech - Deployment Script

echo "🐉 中华文化·高科技 - 部署脚本"
echo "=================================="

# 检查是否安装了必要的工具
check_requirements() {
    echo "检查系统要求..."
    
    if ! command -v ruby &> /dev/null; then
        echo "❌ 错误: 未找到Ruby，请先安装Ruby"
        exit 1
    fi
    
    if ! command -v bundle &> /dev/null; then
        echo "❌ 错误: 未找到Bundler，请运行: gem install bundler"
        exit 1
    fi
    
    echo "✅ 系统要求检查通过"
}

# 安装依赖
install_dependencies() {
    echo "安装项目依赖..."
    bundle install
    if [ $? -eq 0 ]; then
        echo "✅ 依赖安装成功"
    else
        echo "❌ 依赖安装失败"
        exit 1
    fi
}

# 本地测试
local_test() {
    echo "启动本地测试服务器..."
    echo "🌐 网站将在 http://localhost:4000 上运行"
    echo "按 Ctrl+C 停止服务器"
    bundle exec jekyll serve --livereload
}

# 构建生产版本
build_production() {
    echo "构建生产版本..."
    bundle exec jekyll build
    if [ $? -eq 0 ]; then
        echo "✅ 构建成功！生成的文件在 _site/ 目录中"
        echo "📁 构建文件大小:"
        du -sh _site/
    else
        echo "❌ 构建失败"
        exit 1
    fi
}

# 清理构建文件
clean_build() {
    echo "清理构建文件..."
    rm -rf _site/
    echo "✅ 清理完成"
}

# 显示帮助信息
show_help() {
    echo "用法: $0 [选项]"
    echo ""
    echo "选项:"
    echo "  serve, s     启动本地测试服务器"
    echo "  build, b     构建生产版本"
    echo "  clean, c     清理构建文件"
    echo "  install, i   安装项目依赖"
    echo "  help, h      显示此帮助信息"
    echo ""
    echo "示例:"
    echo "  $0 serve     # 启动本地服务器"
    echo "  $0 build     # 构建生产版本"
    echo "  $0 clean     # 清理构建文件"
}

# 主函数
main() {
    case "${1:-help}" in
        "serve"|"s")
            check_requirements
            install_dependencies
            local_test
            ;;
        "build"|"b")
            check_requirements
            install_dependencies
            build_production
            ;;
        "clean"|"c")
            clean_build
            ;;
        "install"|"i")
            check_requirements
            install_dependencies
            ;;
        "help"|"h"|*)
            show_help
            ;;
    esac
}

# 运行主函数
main "$@"

# MATLAB 图形导出比较

本项目比较了 MATLAB 中不同的图形导出方法，重点关注各种文件格式及其特性。

- [中文README](README_zh-CN.md)
- [English README](README.md)
  
## 目录
- [MATLAB 图形导出比较](#matlab-图形导出比较)
  - [目录](#目录)
  - [概述](#概述)
  - [特性](#特性)
  - [安装](#安装)
  - [使用方法](#使用方法)
  - [支持的格式和特性](#支持的格式和特性)
    - [exportgraphics](#exportgraphics)
    - [print](#print)
    - [saveas](#saveas)
    - [export\_fig](#export_fig)
    - [fig2svg](#fig2svg)
    - [savefig](#savefig)
  - [字体处理](#字体处理)
  - [注意事项](#注意事项)
  - [贡献](#贡献)
  - [致谢](#致谢)
  - [许可证](#许可证)
  - [联系方式](#联系方式)

## 概述

本项目评估了以下 MATLAB 图形导出方法：

1. exportgraphics
2. print
3. saveas
4. export_fig
5. fig2svg
6. savefig

每种方法都使用不同的文件格式和设置进行测试，以比较它们的功能和局限性。

## 特性
- 全面比较 6 种 MATLAB 图形导出方法
- 支持多种文件格式，包括 emf、eps、pdf、png、svg 等
- 评估字体处理，特别是对中文字符的处理
- 易于使用的脚本，用于测试不同的导出场景

## 安装

1. 克隆此仓库：
   ```bash
   git clone https://github.com/yuzhounh/matlab-figure-export-comparison.git
   ```
2. 确保您的系统上安装了 MATLAB。
3. (可选) 可更新 [export_fig](https://github.com/altmany/export_fig) 和 [fig2svg](https://github.com/kupiqu/fig2svg) 工具箱。

## 使用方法

要使用此比较工具：

1. 运行 `main.m` 以查看仅包含英文文本的输出图像效果。

2. 要测试中文字体：
   - 运行 `main_SimSun.m` 以使用宋体测试中文文本
   - 运行 `main_MSYH.m` 以使用微软雅黑字体测试中文文本

3. 比较 `figures` 文件夹中生成的图像，观察不同格式和语言之间的字体渲染和导出质量差异。

4. 找到满足要求的图片，之后用 `export_graphics.m` 中对应的命令来导出图片即可。

## 支持的格式和特性

### exportgraphics
- 支持：emf、eps、gif、jpg、pdf、png、tif
- EPS（转换为 PDF 后）中文字符一律显示为宋体

### print
- 支持：emf、eps、jpg、pdf、png、svg、tif
- PDF 输出为 A4 页面大小

### saveas
- 支持：bmp、emf、eps、fig、jpg、pdf、png、svg、tif
- PDF 输出为 A4 页面大小
- 无法调整分辨率（bmp 和 jpg：96dpi，png 和 tif：150dpi）

### export_fig
- 支持：bmp、emf、fig、gif、jpg、png、svg、tif
- SVG 输出有灰色背景

### fig2svg
- 仅支持 svg 格式
- 默认输出的图像尺寸被放大
- SVG 中文字符一律显示为微软雅黑

### savefig
- 仅支持 fig 格式

## 字体处理

- 使用微软雅黑字体显示中文字符时：
  - exportgraphics：EPS（转换为 PDF 后）中文字符显示为宋体
  - print 和 saveas：PDF 和 EPS（转换为 PDF 后）中文字符显示为宋体

- 使用宋体显示中文字符时：
  - exportgraphics：PDF 中文显示为 '#'， EPS（转换为 PDF 后）中文字符显示为宋体
  - print 和 saveas：PDF 和 EPS（转换为 PDF 后）中文字符显示为宋体

- 仅有英文文本时，使用默认字体，不会观察到以上字体问题

## 注意事项

1. 不含中文文本，仅包含英文文本的图形通常导出问题较少。
2. 大多数格式都保留了图像透明度，但在白色背景下可能不可见。

## 贡献

欢迎贡献！请随时提交 Pull Request。

## 致谢

感谢以下仓库：
- [export_fig](https://github.com/altmany/export_fig)
- [fig2svg](https://github.com/kupiqu/fig2svg)

## 许可证

本项目采用 GNU 通用公共许可证 v3.0 (GPL-3.0) 授权。

## 联系方式

王敬 - wangjing@xynu.edu.cn

项目链接：[https://github.com/yuzhounh/matlab-figure-export-comparison](https://github.com/yuzhounh/matlab-figure-export-comparison)
# MATLAB Figure Export Comparison

This project compares different methods of exporting figures in MATLAB, focusing on various file formats and their characteristics.

## Table of Contents
- [MATLAB Figure Export Comparison](#matlab-figure-export-comparison)
  - [Table of Contents](#table-of-contents)
  - [Overview](#overview)
  - [Features](#features)
  - [Installation](#installation)
  - [Usage](#usage)
  - [Supported Formats and Characteristics](#supported-formats-and-characteristics)
    - [exportgraphics](#exportgraphics)
    - [print](#print)
    - [saveas](#saveas)
    - [export\_fig](#export_fig)
    - [fig2svg](#fig2svg)
    - [savefig](#savefig)
  - [Font Handling](#font-handling)
  - [Notes](#notes)
  - [Contributing](#contributing)
  - [Acknowledgements](#acknowledgements)
  - [License](#license)
  - [Contact](#contact)

## Overview

This project evaluates the following MATLAB figure export methods:

1. exportgraphics
2. print
3. saveas
4. export_fig
5. fig2svg
6. savefig

Each method is tested with different file formats and settings to compare their capabilities and limitations.

## Features
- Comprehensive comparison of 6 MATLAB figure export methods
- Support for multiple file formats including emf, eps, pdf, png, svg, and more
- Evaluation of font handling, especially for Chinese characters
- Easy-to-use script for testing different export scenarios

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/yuzhounh/matlab-figure-export-comparison.git
   ```
2. Ensure you have MATLAB installed on your system.
3. (Optional) Install or update the [export_fig](https://github.com/altmany/export_fig) and [fig2svg](https://github.com/kupiqu/fig2svg) toolboxes if needed.

## Usage

To use this comparison tool:

1. Run `main.m` to view the output image effects with English text only.

2. To test with Chinese fonts:
   - Run `main_SimSun.m` to test with Chinese text using SimSun (宋体) font
   - Run `main_MSYH.m` to test with Chinese text using Microsoft YaHei (微软雅黑) font

3. Compare the resulting images in the `figures` folder to observe differences in font rendering and export quality across various formats and languages.

Note: The output images for all tests will be saved in the `figures` folder.

## Supported Formats and Characteristics

### exportgraphics
- Supports: emf, eps, gif, jpg, pdf, png, tif
- PDF output is normal
- EPS converted to PDF displays Chinese characters in SimSun font

### print
- Supports: emf, eps, jpg, pdf, png, svg, tif
- PDF output is A4 page size
- EPS converted to PDF maintains original image size

### saveas
- Supports: bmp, emf, eps, fig, jpg, pdf, png, svg, tif
- PDF output is A4 page size
- EPS converted to PDF maintains original image size
- Resolution cannot be adjusted (bmp and jpg: 96dpi, png and tif: 150dpi)

### export_fig
- Supports: bmp, emf, fig, gif, jpg, png, svg, tif
- SVG output has a gray background

### fig2svg
- Supports only svg format
- Default output has enlarged image dimensions
- SVG text uses Microsoft YaHei font for Chinese characters

### savefig
- Supports only fig format

## Font Handling

- When using Microsoft YaHei font for Chinese characters:
  - exportgraphics: EPS converted to PDF displays Chinese in SimSun
  - print and saveas: PDF and EPS (converted to PDF) display Chinese in SimSun

- When using SimSun font for Chinese characters:
  - exportgraphics: PDF displays Chinese as '#', EPS converted to PDF displays correctly
  - print and saveas: PDF and EPS (converted to PDF) display Chinese correctly

- When only English text is present, font issues are not observed

## Notes

1. Figures without Chinese text generally have fewer export issues.
2. Image transparency is preserved in most formats but may not be visible with white backgrounds.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Acknowledgements

Thanks to the following repositories:
- [export_fig](https://github.com/altmany/export_fig)
- [fig2svg](https://github.com/kupiqu/fig2svg)

## License

This project is licensed under the GNU General Public License v3.0 (GPL-3.0).

## Contact

Jing Wang - wangjing@xynu.edu.cn

Project Link: [https://github.com/yuzhounh/matlab-figure-export-comparison](https://github.com/yuzhounh/matlab-figure-export-comparison)
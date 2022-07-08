## XJTUMCM 模板使用说明
### 背景
在xjtu这个充满了奇迹与卷的地方，数模这玩意普及率高的出奇。

然而相反的是LaTeX这东西普及率却不是很高。导致我找到的各类国赛模板都没有那么好用。

经过~~一次~~两次国赛校赛和一次美赛校赛，我总结出了这套国赛LaTeX模板，目的是能在写作时尽快解决奇奇怪怪的排版需求，全身心的投入到写作中去。

目前这套模板毕竟只是我个人的总结，如果碰到了其他奇奇怪怪~~可可爱爱~~的排版要求，可以开issue一起讨论。

### 安装
建议直接使用`git`

```git
git clone https://github.com/CCandle/LaTeX-template.git
```

或者下载压缩包，解压到本地即可

### 使用
详细使用教程请移步[我的Blog](https://blog.ccandletop)

### 目录结构
```tree
LaTeX-template
├── doc                 // 存放参考文献
│   └── bibfile.bib     // bibtex源码
├── main.pdf            // 生成的论文
├── main.tex            // 主tex文件，控制文章
├── page                // 存放各章节tex文件
│   ├── abstract.tex    // 建议每个章节/小节分一个文件
│   ├── appendix.tex
│   └── content.tex
├── sty                 // 存放样式文件
│   └── matlab.sty      // 自定义matlab关键词文件
└── XJTUMCM.cls         // 模板文件
```

### 相关资料

### 维护
@CCandle

### 贡献

### 开源许可
[MIT](LICENSE) © Richard Littauer
## XJTUMCM 模板使用说明
### 背景
在xjtu这个充满了奇迹与卷的地方，数模这玩意普及率高的出奇。

然而相反的是LaTeX这东西普及率却不是很高。导致我找到的各类国赛模板都没有那么好用。

经过~~一次~~两次国赛校赛和一次美赛校赛，我总结出了这套国赛LaTeX模板，目的是能在同学们写作时尽快解决奇奇怪怪的排版需求，全身心的投入到写作中去。

目前这套模板毕竟只是我个人的总结，如果碰到了其他~~可可爱爱~~奇奇怪怪的排版要求，可以开[issue](https://github.com/CCandle/LaTeX-template/issues)一起讨论。

### 安装
#### Windows环境
环境要求：
+ 电脑上安装了`TexLive`
+ 如果使用VS Code(这也是我的推荐编辑方式)，安装了[LaTeX-Workshop](https://github.com/James-Yu/LaTeX-Workshop)

建议直接使用`git`

```git
git clone https://github.com/CCandle/LaTeX-template.git
```

或者下载[压缩包](https://github.com/CCandle/LaTeX-template/archive/refs/heads/master.zip)，解压到本地即可

#### Linux环境
Linux环境下主要是字体会有些问题。
可以对应查看`Linux`分支下的模板。

### 使用
详细的安装和使用教程请移步[我的Blog](https://blog.ccandle.top)（尚未发布）

### 目录结构
```tree
LaTeX-template
├── doc                 // 存放参考文献
│   └── bibfile.bib     // bibtex源码
├── main.pdf            // 生成的论文
├── main.tex            // 主tex文件，控制文章结构
├── page                // 存放各章节tex文件
│   ├── abstract.tex    // 摘要
│   ├── appendix.tex    // 附录，通常放代码
│   ├── fig_tab.tex     // 章节：图表环境
│   ├── formula.tex     // 章节：公式
│   └── test.tex        // 章节：样式测试
├── src                 // 章节：源代码
│   ├── sample.m
│   └── sample.py
├── sty                 // 存放样式文件
│   └── matlab.sty      // 自定义matlab关键词文件
└── XJTUMCM.cls         // 模板文件
```

### 相关资料
基础的LaTeX知识可以参考[一份其实很短的 LaTeX 入门文档](https://liam.page/2014/09/08/latex-introduction/)，作者是个大佬，写了很多关于LaTeX的文章，可以自行查阅。

推荐的书籍是刘海洋的《LaTeX入门》。然而这本书中的内容已经远远高于入门了，建议把它当做一本很好的工具书来使用。

### 维护
[@CCandle](https://github.com/CCandle)

### 贡献
非常欢迎你的加入！[提一个 Issue](https://github.com/CCandle/LaTeX-template/issues) 或者[提交一个 Pull Request](https://github.com/CCandle/LaTeX-template/pulls)。

### 开源许可
[MIT](LICENSE) © CCandle
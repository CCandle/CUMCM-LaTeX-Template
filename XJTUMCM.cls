\ProvidesClass{XJTUMCM}[A CUMCM template by QU Lingfeng from Xi'an Jiao Tong University]
\NeedsTeXFormat{LaTeX2e}

\DeclareOption*{%
    \PassOptionsToClass{\CurrentOption}{ctexart}
}
\ProcessOptions\relax
\LoadClass{ctexart}


\RequirePackage{geometry}
\RequirePackage{amsmath}
\RequirePackage{float}
\RequirePackage{esint}
\RequirePackage{graphicx}
\RequirePackage{cases}
\RequirePackage{caption}
\RequirePackage{fontspec}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{gbt7714}
\RequirePackage{appendix}
\RequirePackage{enumerate}
\RequirePackage{listings}
\RequirePackage{xcolor}
\RequirePackage{lmodern}
\RequirePackage{xpatch}
\RequirePackage{xifthen}
\RequirePackage{xargs}
\RequirePackage{changepage}
\RequirePackage{multirow}

% 隐藏超链接红框
\hypersetup{
colorlinks=true,
linkcolor=black,
anchorcolor=black,
citecolor=black,
urlcolor=black
}

\graphicspath{{img/}}

% lstlisting settings
\renewcommand{\lstlistingname}{源码}
\lstset{
    basicstyle          =   \sffamily,
    keywordstyle        =   \bfseries,
    commentstyle        =   \rmfamily\itshape,
    stringstyle         =   \ttfamily,
    showspaces          =   false,
    showstringspaces    =   false,
    numbers             =   left,
    numberstyle         =   \zihao{-5}\ttfamily,
    basewidth       =   0.6em,
    columns         =   fixed,
    captionpos          =   t,
    frame               =   single,
    % frameround          =   tttt,
    framexleftmargin    =   2.5em,
    framexrightmargin   =   2.5em,
    flexiblecolumns     =   false,
    xleftmargin         =   25pt,
    xrightmargin        =   25pt,
    breaklines      =   true,
}

\lstdefinestyle{Python}{
    language        =   Python,
    basicstyle      =   \zihao{-5}\ttfamily,
    numberstyle     =   \zihao{-5}\ttfamily,
    keywordstyle    =   \color[RGB]{122, 62, 157},
    keywordstyle    =   [2] \color[RGB]{170, 55, 49},
    stringstyle     =   \color[RGB]{68, 140, 39},
    commentstyle    =   \color{gray} \ttfamily,
}

\lstdefinestyle{Matlab}{
    language        =   Matlab,
    basicstyle      =   \zihao{-5}\ttfamily,
    numberstyle     =   \zihao{-5}\ttfamily,
    keywordstyle    =   \color[RGB]{122, 62, 157},
    keywordstyle    =   [2] \color[RGB]{170, 55, 49},
    stringstyle     =   \color[RGB]{68, 140, 39},
    commentstyle    =   \color{gray} \ttfamily,
}

% 字体、段落格式设定
\ExplSyntaxOn
\xpatchcmd\__xeCJK_check_family:n{\__xeCJK_warning:nxx}{\__xeCJK_info:nxx}{}{}
\ExplSyntaxOff
\setCJKmainfont{SimSun}
\setmainfont{Times New Roman}
\newcommand{\xiaosi}{\zihao{-4}\songti}
\captionsetup[table]{name = 表, font = small}
\captionsetup[figure]{name = 图, font = small}
\ctexset
{
    section         = {format = \zihao{4} \heiti \centering},
    subsection      = {format = \zihao{-4} \heiti},
    subsubsection   = {format = \zihao{-4} \heiti},
}
\geometry{left=2.8cm, right=2.50cm, top=2.50cm, bottom=2.50cm}

% 自动引用名称
\def\equationautorefname{式}
\def\footnoteautorefname{脚注}
\def\itemautorefname{问题}
\def\figureautorefname{图}
\def\tableautorefname{表}
\def\appendixautorefname{附录}
\def\sectionautorefname{章}
\def\subsectionautorefname{节}
\def\subsubsectionautorefname{小节}
\def\paragraphautorefname{段落}
\def\subparagraphautorefname{子段落}
\def\theoremautorefname{定理}

% 自动编号设置
% 下列编号带章号
% \numberwithin{equation}{section}
% \numberwithin{table}{section}
% \numberwithin{figure}{section}

% 自定义\maketitle样式
\makeatletter
\renewcommand*\maketitle{
    \begin{center}
        {\zihao{3} \heiti \bfseries \@title \par}
        \vskip 2em
    \end{center}%
    \setcounter{page}{1}
    \xiaosi
}
\makeatother

% 自定义摘要
\renewenvironmentx{abstract}[5][1,2,3,4,5]
{
    \newcommand{\keywords}{
        \xiaosi
        \ifthenelse{\isempty{#1}}{}
        {
            {\bf 关键词}
            \ifthenelse{\isempty{#2}}{#1}
            {
                \ifthenelse{\isempty{#3}}{#1；#2}
                {
                    \ifthenelse{\isempty{#4}}{#1；#2；#3}
                    {
                        \ifthenelse{\isempty{#5}}{#1；#2；#3；#4}
                        {
                                #1；#2；#3；#4；#5
                        }
                    }
                }
            }
        }
    }
    \begin{adjustwidth}{1.5em}{1.5em}
    \begin{center}
        \zihao{3} \heiti \bf 摘 \hspace{1em} 要
    \end{center}
    \vspace{0.5em}
    \zihao{-4}\songti
    \par
}
{
    \par
    \keywords
    \par
    \end{adjustwidth}
    \clearpage
}

% linux字体bug设置
\ExplSyntaxOn
\xpatchcmd \fontspec_new_script:nn
    { \__fontspec_warning:nxx }
    { \__fontspec_info:nxx }
    {}{\fail}
\newfontscript{CJK}{hani}
\ExplSyntaxOff

% 防止警告。数模不需要作者
\author{}

\def\dif{\mathop{}\hphantom{\mskip-\thinmuskip}\mathrm{d}}%
\let\daccent\d
\let\d\relax
\newcommand\d{\ifmmode\dif\else\expandafter\daccent\fi}
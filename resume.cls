\ProvidesClass{resume}[Resume Class by Bin Zhang]
\NeedsTeXFormat{LaTeX2e}

\newif\ifChinese
\newif\ifEnglish

% Chinese?
\DeclareOption{zh}{\Chinesetrue\Englishfalse}
\DeclareOption{en}{\Chinesefalse\Englishtrue}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}


% Customize the section headers
\RequirePackage{titlesec}
% footnote
\RequirePackage{fancyhdr}
% Set the margins
\RequirePackage[margin=0.5in]{geometry}

\RequirePackage[T1]{fontenc}


% We also to use images
\RequirePackage[]{graphicx}
\graphicspath{{icons/}}
\RequirePackage{amsmath}
% Needed to use \ifxetex-\else-\fi statement
\RequirePackage{ifxetex}
% Needed to use \if-\then-\else statement
\RequirePackage{xifthen}

% Turn off page numbering
\pagenumbering{gobble}

\RequirePackage{xcolor}
%-------------------------------------------------------------------------------
%                Configuration for colors
%-------------------------------------------------------------------------------
% Gray-scale colors
\definecolor{white}{HTML}{FFFFFF}
\definecolor{black}{HTML}{000000}
\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{5D5D5D}
\definecolor{lightgray}{HTML}{999999}
% Basic colors
\definecolor{green}{HTML}{C2E15F}
\definecolor{orange}{HTML}{FDA333}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{red}{HTML}{FB4485}
\definecolor{blue}{HTML}{6CE0F1}
% Text colors
\definecolor{darktext}{HTML}{3A3A3A}

% define the font color for Chinese and English separately
\ifEnglish
\colorlet{maincolor}{black}
\else
\colorlet{maincolor}{black}
\fi

% We also to use hyperlinks to projects.
\RequirePackage[colorlinks, linkcolor=black, urlcolor=black, bookmarks=false]{hyperref}


% whether input zh
\ifChinese
	% Enable Chinese
	\typeout{Chinese Mode, should be compiled with XeLaTeX!}
	\RequirePackage{xeCJK}
	\RequirePackage{xunicode}
	\RequirePackage{xltxtra}

	
	\setCJKmainfont[Path=fonts/,BoldFont=HYQiHeiX1-55W.otf]{HYQiHeiX1-45W.otf}

	%-----------------------------------Font Settings----------------------------------
	\setCJKfamilyfont{song}{SimSun}                             %宋体 song
	\newcommand{\song}{\CJKfamily{song}}                        % 宋体   (Windows自带simsun.ttf)
	\setCJKfamilyfont{xs}{NSimSun}                              %新宋体 xs
	\newcommand{\xs}{\CJKfamily{xs}}
	\setCJKfamilyfont{fs}{FangSong_GB2312}                      %仿宋2312 fs
	\newcommand{\fs}{\CJKfamily{fs}}                            %仿宋体 (Windows自带simfs.ttf)
	\setCJKfamilyfont{kai}{KaiTi_GB2312}                        %楷体2312  kai
	\newcommand{\kai}{\CJKfamily{kai}}                          
	\setCJKfamilyfont{yh}{Microsoft YaHei}                    %微软雅黑 yh
	\newcommand{\yh}{\CJKfamily{yh}}
	\setCJKfamilyfont{hei}{SimHei}                                    %黑体  hei
	\newcommand{\hei}{\CJKfamily{hei}}                          % 黑体   (Windows自带simhei.ttf)
	\setCJKfamilyfont{msunicode}{Arial Unicode MS}            %Arial Unicode MS: msunicode
	\newcommand{\msunicode}{\CJKfamily{msunicode}}
	\setCJKfamilyfont{li}{LiSu}                                            %隶书  li
	\newcommand{\li}{\CJKfamily{li}}
	\setCJKfamilyfont{yy}{YouYuan}                             %幼圆  yy
	\newcommand{\yy}{\CJKfamily{yy}}

	\setCJKfamilyfont{hwsong}{STSong}                            %华文宋体  hwsong
	\newcommand{\hwsong}{\CJKfamily{hwsong}}
	\setCJKfamilyfont{hwzs}{STZhongsong}                        %华文中宋  hwzs
	\newcommand{\hwzs}{\CJKfamily{hwzs}}
	\setCJKfamilyfont{hwfs}{STFangsong}                            %华文仿宋  hwfs
	\newcommand{\hwfs}{\CJKfamily{hwfs}}
	\setCJKfamilyfont{hwxh}{STXihei}                                %华文细黑  hwxh
	\newcommand{\hwxh}{\CJKfamily{hwxh}}
	\setCJKfamilyfont{hwl}{STLiti}                                        %华文隶书  hwl
	\newcommand{\hwl}{\CJKfamily{hwl}}
	\setCJKfamilyfont{hwxw}{STXinwei}                                %华文新魏  hwxw
	\newcommand{\hwxw}{\CJKfamily{hwxw}}
	\setCJKfamilyfont{hwk}{STKaiti}                                    %华文楷体  hwk
	\newcommand{\hwk}{\CJKfamily{hwk}}
	\setCJKfamilyfont{hwxk}{STXingkai}                            %华文行楷  hwxk
	\newcommand{\hwxk}{\CJKfamily{hwxk}}
	\setCJKfamilyfont{hwcy}{STCaiyun}                                 %华文彩云 hwcy
	\newcommand{\hwcy}{\CJKfamily{hwcy}}
	\setCJKfamilyfont{hwhp}{STHupo}                                 %华文琥珀   hwhp
	\newcommand{\hwhp}{\CJKfamily{hwhp}}

	%-----------------------------Font Size---------------------------------
	\newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}     %初号
	\newcommand{\xiaochuhao}{\fontsize{36pt}{\baselineskip}\selectfont} %小初号
	\newcommand{\yihao}{\fontsize{28pt}{\baselineskip}\selectfont}      %一号
	\newcommand{\erhao}{\fontsize{21pt}{\baselineskip}\selectfont}      %二号
	\newcommand{\xiaoerhao}{\fontsize{18pt}{\baselineskip}\selectfont}  %小二号
	\newcommand{\sanhao}{\fontsize{15.75pt}{\baselineskip}\selectfont}  %三号
	\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}%     四号
	\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}  %小四号
	\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}    %五号
	\newcommand{\xiaowuhao}{\fontsize{9pt}{\baselineskip}\selectfont}   %小五号
	\newcommand{\liuhao}{\fontsize{7.875pt}{\baselineskip}\selectfont}  %六号
	\newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont}    %七号
\fi


% Customize the section heading
\titleformat{\section}
	{\Large\scshape\raggedright} % Customize the size of the section command
	{}{0em} % Provides a prefix to every section
	{} % Insert code before the heading
	[\titlerule] % Inserts a horizontal line after the heading

% Customize the subsection heading
\titleformat{\subsection}
	{\large\scshape\raggedright}
	{}{0em}
	{}

\newcommand{\imgraised}[1]{
	\raisebox{-3pt}{\includegraphics{#1}}
}
\newcommand{\imgtitle}[2]{
	\raisebox{-3pt}{\includegraphics[height=#1]{#2}}
}

% Provide a command for name and contact information
\newcommand{\name}[1]{
	\huge {\scshape{#1}}
}

\newcommand{\wanted}[1]{
	\normalsize #1
}

\newcommand{\address}[1]{
	\normalsize
	\imgtitle{12pt}{Address0} #1
}

\newcommand{\email}[1]{
	\normalsize
	\imgtitle{12pt}{email} \href{mailto:#1}{#1}
}

\newcommand{\phone}[1]
{
	\normalsize
	\imgtitle{12pt}{Phone0} #1
}

\newcommand{\wechat}[1]
{
	\normalsize
	\imgtitle{12pt}{Wechat0} #1
}

\newcommand{\github}[1]
{
	\normalsize
	\imgtitle{12pt}{Github0} \href{https://github.com/#1}{#1}
}

\newcommand{\zhihu}[1]
{
	\normalsize
	\imgtitle{12pt}{zhihu} \href{https://zhuanlan.zhihu.com/#1}{#1}
}

\newcommand{\sepbar}{\quad\textbar\quad}

% about yourself
\newcommand{\info}[9]{
	\begin{minipage}[h]{0.8\linewidth}
		\flushleft
		\huge #1
		\\
		\normalsize
		\vspace{6pt}
		\imgtitle{12pt}{Address0} #2
		\\
		\vspace{6pt}
		\imgtitle{12pt}{email} #3
		\quad
		\imgtitle{12pt}{Phone0} #4
		\quad
		\imgtitle{12pt}{Wechat0} {#5}
		\\
		\vspace{6pt}
		\imgtitle{12pt}{Github0} \href{#7}{#6}
		\quad
		\imgtitle{12pt}{zhihu} \href{#9}{#8}
	\end{minipage}
}
		

\newcommand{\photo}[1]{
	\begin{minipage}[h]{0.15\linewidth}
		\centering
		\includegraphics[width=0.8\linewidth]{#1}
	\end{minipage}
}

% font shape of section title
\ifEnglish
\newcommand{\secTitleShape}[1]{{\scshape{\textbf{#1}}}}
\else
\newcommand{\secTitleShape}[1]{#1}
\fi

% Create some special sections now
\newcommand{\imgsection}[2]{
	\section{\protect \includegraphics[height=12pt]{#1} \hspace{-2pt} \secTitleShape{#2}}
}

\newcommand{\edusubsection}[3]{
	\subsection{\textbf{#1} \hfill #2}
	\vspace{-4pt}
	{\normalfont\normalsize #3}
	\vspace{-10pt}
}

% Make another special section for skilss
\newcommand{\skillsubsection}[2]{
	\subsection[#1]{#1: {\normalfont\normalsize#2}}
}

% def the different widths for English and Chinese due to the different lengths of sentences
\ifChinese
\def\@factor{0.4}
\else
\def\@factor{0.33}
\fi

\newcommand{\expsubsection}[4]{
	\subsection[#1]{
	\begin{minipage}[b]{\@factor\linewidth}
	\textbf{#1}
	\end{minipage}
	{\normalfont\textbf{#2}} \hfill #3}
	\vspace{-4pt}
	{\normalfont\normalsize #4}
	\vspace{-10pt}
}

\ifEnglish
\newcommand{\italicshape}{\textit}
\else
\newcommand{\italicshape}{}
\fi

% A special section for projects.
\newcommand{\projectsubsection}[3]{
	\subsection[#1]{\textbf{#1} - ({\normalfont\normalsize\italicshape{#2}})}
	\vspace{-4pt}
	{\normalfont\normalsize#3}
	\vspace{-10pt}
}


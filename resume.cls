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


\newcommand{\expsubsection}[4]{
	\subsection[#1]{
	\begin{minipage}[b]{\0.33\linewidth}
	\textbf{#1}
	\end{minipage}
	{\normalfont\textbf{#2}} \hfill #3}
	\vspace{-4pt}
	{\normalfont\normalsize #4}
	\vspace{-10pt}
}


% A special section for projects.
\newcommand{\projectsubsection}[3]{
	\subsection[#1]{\textbf{#1} - ({\normalfont\normalsize\textit{#2}})}
	\vspace{-4pt}
	{\normalfont\normalsize#3}
	\vspace{-10pt}
}


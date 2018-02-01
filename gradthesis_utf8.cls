%%%
%%% Style file for graduation thesis of Hiroshima City Univ.
%%%                                                1997-1998 Sasaki
%%%

% History
% 1997/12/15 Prototype.
% 1997/12/18 38x32 mode.
% 1997/12/22 Add title page.
% 1998/01/12 Fix title page.
% 1998/01/12 Add abstract in English.
% 1998/01/12 Add 36x32 mode.
% 1998/01/13 Fix title page.
% 1998/01/13 Add draft mode.
% 1998/01/13 Fix acknowledgement environment.
% 1998/01/15 Fix some style.
% 1998/01/20 Add head and foot.
% 1998/01/20 Add some items to table of contents.
% 1998/01/20 Port to old jlatex versions.
% 1998/01/21 Fix head of bibliography and appendix.
% 1998/01/21 Add supervisor name.
% 1998/01/26 Change font size of head, and move to right.
% 1998/01/26 Add mybibliography environment.
% 1998/02/03 Change title page.
% 1998/02/03 Fix for old jlatex.
% 2007/12/28 Fix for Format Change
\def\dg{}
\typeout{広島市立大学 卒業論文作成用スタイルファイル}
\typeout{Style file for graduation thesis of Hiroshima City Univ.}
\typeout{1997-1998 Sasaki}
\typeout{Special thanks to Uni as Nakamoto}

%\input jreport.sty
%\input jreport.cls
%\input ujreport.cls
\RequirePackage{ifuptex,ifluatex}
%\ifluatex
%\input ltjsreport.cls
%\else
\ifupTeX
\input ujreport.cls
\else
\input jreport.cls
\fi
%\fi



%%%
%%% Page style
%%%
%\textwidth      = 150.0mm
\textwidth      = 155.0mm
\textheight     = 227.0mm
\topmargin      =   4.6mm
\oddsidemargin  =  -0.3mm
\evensidemargin =  -0.3mm
\headheight     =     0mm
\footskip       =    10mm
%\footheight     =    10mm

% Comment out the next one line, if you want to use
% 38x32 mode.  Otherwise 36x32 mode is used.
%\xkanjiskip=0.3pt plus 0.5pt minus 0pt

\sloppy
\renewcommand{\baselinestretch}{1.0}


%%%
%%% Floating objects
%%%
\renewcommand{\textfraction}{0}\renewcommand{\floatpagefraction}{1}
\renewcommand{\topfraction}{1} \renewcommand{\bottomfraction}{1}

\def\draftmode{
\def\fps@figure{p}\def\fps@table{p}
}


%%%
%%% Overwrite table of contents command
%%%
\def\contentsname{目次}
\def\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{
        \vspace*{-2.5cm}%
        \begin{center}\large\dg\bf\leavevmode\@jtitle\end{center}
        \large\dg\bf\contentsname\vspace*{-1.5cm}
        \@mkboth{%
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }


%%%
%%% Title page
%%%
\def\jtitle#1{\gdef\@jtitle{#1}}
\def\jaffil#1{\gdef\@jaffil{#1}}
\def\jauthor#1{\gdef\@jauthor{#1}}
\def\jabst#1{\gdef\@jabst{#1}}
\def\supervisor#1{\gdef\@supervisor{#1}}

\def\etitle#1{\gdef\@etitle{#1}}
\def\eaffil#1{\gdef\@eaffil{#1}}
\def\eauthor#1{\gdef\@eauthor{#1}}
\def\eabst#1{\gdef\@eabst{#1}}

\def\maketitle{
\pagenumbering {roman} 
\begin{center}
\vspace*{4mm}
{\Large\dg\bf \@jtitle}\\
\vspace*{3mm}
{\large\dg\bf \@jaffil}\\
\vspace{5mm}
{\large \@jauthor}\\
\vspace{6mm}
\begin{minipage}[t]{0.88\textwidth}
{\dg\bf 概要}\\
{\normalsize \@jabst}
\end{minipage}
\begin{minipage}[t]{1pt}
\vspace*{13cm}
\end{minipage}
\end{center}

% Thanks to Uni as Y. Nakamoto. and Kawabata.
\begin {center}
\thispagestyle{empty}
\dg\bf
\begin{tabular}[b]{|c|c|c|c|c|}
\hline
\begin{minipage}{3cm}
\setlength{\baselineskip}{0pt}
\hspace*{\fill} ページ \hspace*{\fill} \\
 \hspace*{\fill} 数 \hspace*{\fill}
\end{minipage} &
%\begin{minipage}{3cm}
%\setlength{\baselineskip}{0pt}
%\hspace*{\fill}事務\hspace*{\fill}\\ \hspace*{\fill}受付日\hspace*{\fill}
%\end{minipage} &
\begin{minipage}{3cm}
\setlength{\baselineskip}{0pt}
\hspace*{\fill}\hspace*{\fill}\\ \hspace*{\fill}提出日\hspace*{\fill}
\end{minipage} &
%\begin{minipage}{3cm}
%\setlength{\baselineskip}{0pt}
%\hspace*{\fill}教務委員\hspace*{\fill}\\ \hspace*{\fill}受付印\hspace*{\fill}
%\end{minipage} &
\begin{minipage}{3cm}
\setlength{\baselineskip}{0pt}
\hspace*{\fill}指導教員\hspace*{\fill}\\ \hspace*{\fill}受付印\hspace*{\fill}
\end{minipage} &
\begin{minipage}{5cm}
\setlength{\baselineskip}{0pt}
\hspace*{\fill}指導教員名\rule[-6mm]{0mm}{15mm}\hspace*{\fill}
\end{minipage} \\
\hline
\rule[-6mm]{0mm}{15mm} \pageref{matomekongo} &  & & \large\dg\bf\@supervisor\\
\hline
\end{tabular}
\end {center}
\newpage
\thispagestyle{empty}
\begin{center}
\vspace*{8mm}
\ifengtitle
{\Large\dg\bf \@etitle}\\
\vspace*{7mm}
\fi
\ifengaffil
{\large\dg\bf \@eaffil}\\
\vspace*{4mm}
\fi
\ifengauthor
{\large  \@eauthor}\\
\vspace{8mm}
\fi
\begin{minipage}{0.87\textwidth}
{\dg\bf Abstract}\\
\normalsize
\baselineskip=14pt
\@eabst
\end{minipage}\\
\end{center}
\setcounter{page}{0}
\tableofcontents
\newpage
\baselineskip=20pt
\pagenumbering{arabic}
\ifusehead
\def\@oddhead{\hfil{\small\chaptername{\thechapter}\hspace*{1zw}\rightmark}}%
\def\@evenhead{\hfil{\small\chaptername{\thechapter}\hspace*{1zw}\rightmark}}%
\def\chaptermark##1{%
\markright{##1}}
\fi
}

\def\chaptername#1{第 \lower0.1ex\hbox{#1} 章}

%%%
%%% Misc commands/environments
%%%
\newcommand{\comment}[1]{}
\newif\ifusehead
\def\usehead{\useheadtrue}
\newif\ifengaffil
\def\engaffil{\engaffiltrue}
\newif\ifengtitle
\def\engtitle{\engtitletrue}
\newif\ifengauthor
\def\engauthor{\engauthortrue}
\def\acknowledgment{\par
\newpage
\thispagestyle{plain}
\addtocontents{toc}{\protect\contentsline{chapter}%
{\hbox to\@tempdima {\hfil }謝辞}{\thepage}}%
{{\large \dg\bf 謝辞} \ignorespaces}\newline\indent}
\let\endacknowledgment\par


%%%
%%% Bibliography
%%%
\newcounter{bibcounter}

\def\name@bib{参考文献}
\def\thebibliography#1{%
        \chap@emptychapter{\name@bib}
        \list{[\arabic{enumi}]}{\settowidth\labelwidth{[#1]}
                \leftmargin\labelwidth \advance\leftmargin\labelsep
                \usecounter{enumi}}
        \def\newblock{\hskip.11em plus.33em minus.07em}
        \sloppy \frenchspacing \clubpenalty4000 \widowpenalty4000
        \markright{\name@bib}
}
\def\endthebibliography{%
	\setcounter{bibcounter}{\value{enumi}}
	\endlist
}

\def\name@mybib{公開済み及び投稿中の論文リスト}
\def\mybibliography#1{%
        \chap@emptychapter{\name@mybib}
        \list{[\arabic{enumi}]}{\settowidth\labelwidth{[#1]}
                \leftmargin\labelwidth \advance\leftmargin\labelsep
                \usecounter{enumi}}
        \def\newblock{\hskip.11em plus.33em minus.07em}
        \sloppy \frenchspacing \clubpenalty4000 \widowpenalty4000
        \markright{\name@mybib}
	\setcounter{enumi}{\value{bibcounter}}
}
\let\endmybibliography\endlist

\let\chap@chap\chapter
\def\chap@emptychapter#1{\chap@chap*{#1\@mkboth{#1}{#1}}
        \addcontentsline{toc}{chapter}{\numberline{}#1}}


%%%
%%% Appendix
%%%
\let\myappendix\appendix
\def\appendix{
\def\chaptername{}
  \newpage
  \addtocontents{toc}{\protect\contentsline{chapter}%
     {\hbox to\@tempdima {\hfil }付録}{\ }}%
  \def\chaptername##1{付録 \lower0.1ex\hbox{##1}}
\myappendix
}

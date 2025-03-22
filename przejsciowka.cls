\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{przejsciowka}

\LoadClass[12pt, twoside]{article}
\RequirePackage{lmodern}
\RequirePackage{amsmath}
\usepackage{titlesec}
\usepackage{polski}
\usepackage{listings,lstautogobble}
\usepackage{xifthen}
 \usepackage{url}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{graphics}
\RequirePackage{xcolor}
\RequirePackage{tikz}
\RequirePackage{hyperref}
\RequirePackage[margin = 2cm]{geometry}
\RequirePackage{fancyhdr}
\usepackage{graphicx}
\usepackage{hyperref}
\usepackage{url}
\usepackage[T1]{fontenc}
\usepackage{indentfirst}
\usepackage{bm}
\usepackage{amsmath}
\usepackage{float}
\usepackage{sectsty}
\sectionfont{\bfseries\Large\raggedright}

\DeclareOption{red}{\renewcommand{\headlinecolor}{\color{slcolor}}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\newcommand{\class}[1]{\gdef\@class{#1}}
\newcommand{\@class}{\@latex@warning@no@line{No \noexpand\class given}}

\newcommand\instructor[1]
{
    \gdef\@instructor{Kierujący pracą: #1}\\
}

\renewcommand{\maketitle}
{

\begin{titlepage}

\begin{center}

\def\tkzscl{0.2}\definecolor{ZnakColor}{cmyk}{1,0,0,1}


% \input{logo_pw.tex}\\\vfill
\begin{figure}[H]
        \centering
        \includegraphics[width=0.6\textwidth]{images/logo.png}
\end{figure}

\vspace{7mm}

{\fontsize{15}\selectfont Instytut Techniki Lotniczej i Mechaniki Stosowanej}

\vspace{10mm}

{\fontsize{22}{50}\fontseries{bx}\selectfont\@class}\\[10pt]

{\fontsize{12}\selectfont na kierunku Robotyka i Automatyka}\\
{\fontsize{12}\selectfont w specjalności Robotyka}

\vspace{10mm}

{\fontsize{22}{40}\selectfont\@title}

\vspace{10mm}

{\fontsize{21}{40}\selectfont\@author\fontseries{n}\selectfont}

\vspace{10mm}

{\fontsize{12}\selectfont promotor}\\
{\fontsize{12}\selectfont dr Andrzej Chmielniak}

\vspace{80mm}

{\fontsize{12}\selectfont Warszawa, 2022}\vfill

\end{center}

% {\fontsize{18}{20}\selectfont\@instructor\fontseries{n}\selectfont}\\[10pt]

\end{titlepage}

}

%New colors defined below
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

%Code listing style named "mystyle"
\lstdefinestyle{mystyle}{
  backgroundcolor=\color{backcolour}, commentstyle=\color{codegreen},
  keywordstyle=\color{magenta},
  numberstyle=\tiny\color{codegray},
  stringstyle=\color{codepurple},
  basicstyle=\ttfamily\footnotesize,
  breakatwhitespace=false,         
  breaklines=true,                 
  captionpos=b,                    
  keepspaces=true,                 
  numbers=left,                    
  numbersep=5pt,                  
  showspaces=false,                
  showstringspaces=false,
  showtabs=false,                  
  tabsize=2,
  autogobble=true
}

%"mystyle" code listing set
\lstset{style=mystyle}


\fancyhf{}
\fancyhead[LE]{\@class}
% \fancyhead[LO]{\@title}
\fancyhead[LO]{Oprogramowanie autopilota dla naziemnych robotów}
\fancyhead[R]{\@author}
\fancyfoot[LO,RE]{\thepage}
\pagestyle{fancy}

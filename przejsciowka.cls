\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{przejsciowka}

\LoadClass[12pt, twoside]{article}
\RequirePackage{lmodern}
\RequirePackage{amsmath}
\usepackage{titlesec}
\usepackage{polski}
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
\usepackage{listings}
\usepackage{xcolor}
\usepackage[font=small,labelfont=bf,labelformat=simple]{caption}
\renewcommand{\figurename}{Rys.}
\renewcommand{\tablename}{Tab.}

\counterwithin{figure}{subsection}

\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

\lstdefinestyle{mystyle}{
    backgroundcolor=\color{backcolour},   
    commentstyle=\color{codegreen},
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
    tabsize=2
}

\lstset{style=mystyle}


\sectionfont{\bfseries\Large\raggedright}

\DeclareOption{red}{\renewcommand{\headlinecolor}{\color{slcolor}}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\newcommand{\class}[1]{\gdef\@class{#1}}
\newcommand{\@class}{\@latex@warning@no@line{No \noexpand\class given}}

\newcommand\instructor[1]
{
    \gdef\@instructor{Kierujący pracą: #1}
}

\renewcommand{\@date}{\@latex@warning@no@line{No \noexpand\date given}}

\renewcommand{\maketitle}
{
\begin{titlepage}
\begin{center}

\def\tkzscl{0.2}\definecolor{ZnakColor}{cmyk}{1,0,0,1}

\begin{figure}[H]
        \centering
        \includegraphics[width=0.5\textwidth]{images/logo_pw_we.png}
\end{figure}

\vspace{7mm}

{\fontsize{12}{18}\selectfont
\textbf{Instytut Elektrotechniki Teoretycznej i Systemów Informacyjno-Pomiarowych }

}

\vspace{10mm}

{\fontsize{22}{26}\fontseries{bx}\selectfont\@class}

\vspace{10pt}

{\fontsize{12}{14}\selectfont na kierunku Informatyka Stosowana}\\
{\fontsize{12}{14}\selectfont w specjalności Inżyniera Oprogramowania}

\vspace{10mm}

{\fontsize{22}{26}\selectfont\@title}

\vspace{10mm}

{\fontsize{21}{25}\selectfont\@author\fontseries{n}\selectfont}

\vspace{10mm}

{\fontsize{12}{14}\selectfont promotor}\\
{\fontsize{12}{14}\selectfont dr. inż. Łukasz Oskwarek}

\vspace{80mm}

{\fontsize{12}{14}\selectfont Warszawa, 2025}

\end{center}

\end{titlepage}
}

% Define the keywords environment for abstracts
\newenvironment{keywords}
  {\par\vskip\baselineskip\noindent\textbf{Słowa kluczowe:} }
  {\par}

% Define abstract_pl environment
\newenvironment{abstract_pl}
  {}
  {}

% Define abstract_en environment  
\newenvironment{abstract_en}
  {}
  {}

% Define keywords_en environment
\newenvironment{keywords_en}
  {\par\vskip\baselineskip\noindent\textbf{Keywords:} }
  {\par}

\fancyhf{}
\fancyhead[LE]{\@class}
\fancyhead[LO]{Analiza danych w czasie rzeczywistym z systemów wieloczujnikowych}
\fancyhead[R]{\@author}
\fancyfoot[LO,RE]{\thepage}
\pagestyle{fancy}

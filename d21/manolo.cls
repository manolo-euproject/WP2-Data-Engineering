%% MANOLO Deliverable Class
%%
%% This is file `manolo.cls',
%% Contributors:
%%  Stasinos Konstantopoulos <konstant@iit.demokritos.gr>, 2024
%%
%% This file is based on the 'article.cls' LaTeX2e class,
%% copyright of the LaTeX project. See http://www.latex-project.org/
%% on how to get the complete LaTeX distribution.
%%
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2003/12/01 or later.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{manolo}[2024/12/31 MANOLO Deliverable class]

\LoadClass[a4paper,oneside,11pt]{article}


\RequirePackage{etoolbox}
\RequirePackage{titling}
\RequirePackage[sfdefault]{carlito}
\RequirePackage{graphicx}
\RequirePackage{xifthen}
\RequirePackage{array}
\RequirePackage{tabularx}
\RequirePackage[usenames,dvipsnames]{color}
\RequirePackage{lastpage}

% Colourful arrays
%\RequirePackage{xcolor}
\RequirePackage{nicematrix}

\RequirePackage[pages=some]{background}
\backgroundsetup{
  scale=1, color=black, opacity=1.0, angle=0,
  contents={%
    \includegraphics[width=\paperwidth,height=\paperheight]{manolo-bg}
  }%
}


%%
%% Margins of Text Pages
%%
\RequirePackage[%
  a4paper,
  top=1in,   bottom=0.9in,     left=1in,    right=1in,
  bindingoffset=0cm,
  head=1in,  headsep=0.3in,
  foot=1in,  footskip=0.4in ]{geometry}


%
% Macros
%

\def\thedeliverable{0.0}
\newcommand{\deliverable}[1]{
  \def\thedeliverable{#1}}

\def\theversion{0.0}
\newcommand{\version}[1]{
  \def\theversion{#1}}

\newcommand{\level}[1]{
  \def\thelevel{#1}}

\newcommand{\due}[1]{
  \def\thedue{#1}}

\newcommand{\submission}[1]{
  \def\thesubmission{#1}}

\newcommand{\workpackage}[1]{
  \def\theworkpackage{#1}}

\newcommand{\task}[1]{
  \def\thetask{#1}}

\newcommand{\lead}[1]{
  \def\thelead{#1}}

\newcommand{\contr}[1]{
  \def\thecontr{#1}}

\newcommand{\type}[1]{
  \def\thetype{#1}}

\newcommand{\status}[1]{
  \def\thestatus{#1}}

\renewcommand{\abstract}[1]{
  \def\theabstract{#1}}

\def\thehistory{ }
\newcommand{\addhistory}[4]{
  \def\thehistory{\thehistory {#1} & {#2} & {#3} & {#4} \\}}

\newcommand{\frontmatter}{
  \pagenumbering{roman}}

\newcommand{\mainmatter}{
  \newpage
  \setcounter{page}{1}
  \pagenumbering{arabic}

  \arrayrulecolor{black}
   \renewcommand\arraystretch{1.5}
  }

\newcommand{\specialsection}[1]{
  {\fontsize{15pt}{15pt}\selectfont{\textcolor{myblue}{#1}}}}


%
% Title Page
%

\definecolor{myorange}{RGB}{239,125,0}
\definecolor{myblue}{RGB}{74,32,116}
\definecolor{mylblue}{RGB}{223,236,248}

\newcommand*{\arraycolor}[1]{\protect\leavevmode\color{#1}}

\renewcommand{\maketitle}{%
  \setcounter{page}{0}
  \thispagestyle{empty}
  \BgThispage
  \vspace*{6cm}
  \begin{center}
    \includegraphics[height=2.5in]{manolo-tagline.png}
    \\
    \vspace*{3cm}

    {\fontsize{28pt}{28pt}\selectfont{\textcolor{myblue}{D\thedeliverable \,\,\thetitle}}} \\
    \vspace*{2cm}
    {\fontsize{18pt}{18pt}\selectfont{\textcolor{myblue}{\thelead}}} \\
    \vspace*{1cm}
    {\fontsize{18pt}{18pt}\selectfont{\textcolor{myblue}{\thesubmission}}} \\
  \end{center}
  \vfill
  \hfill \includegraphics[height=1.2cm]{euflag.png}
  \newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% History, Authors, Schedule
%

\newcommand{\documentinfo}{%

  \specialsection{Abstract}

  \theabstract

  \vspace*{20pt}

  \specialsection{History}

  { \centering
    \renewcommand{\arraystretch}{1.1}

    \rowcolors[\hline]{2}{white}{myllblue}{}
    \arrayrulecolor{myblblue}
    \arrayrulewidth=1pt

    \begin{tabular*}{\textwidth}{|m{0.08\textwidth}|m{0.13\textwidth}|m{0.4828\textwidth}|m{0.19\textwidth}|}

      \rowcolor{myblue}
      \arraycolor{White}\bfseries Version & \arraycolor{White}\bfseries Date & \arraycolor{White}\bfseries Reason & \arraycolor{White}\bfseries Revised by   \\

      \thehistory

    \end{tabular*}
  }

  \newpage
}

%%
%% Headers and Footers
%%

\RequirePackage{fancyhdr}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{\textcolor{myorange}{GA} 101135782}
\fancyhead[L]{\includegraphics[height=1cm]{manolo-1}}
\fancyfoot[R]{\fontsize{10pt}{12pt}\selectfont\thepage\ of \pageref{LastPage}}
\fancyfoot[C]{\vskip -1 cm \includegraphics[height=0.1cm]{manolo-footrule.png}}
\fancyfoot[L]{\textcolor{myblue}{D\thedeliverable \,\,\@title}}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\renewcommand{\subparagraph}{}

\RequirePackage{parskip}
\setlength{\parindent}{0pt}
\setlength{\parskip}{6pt}

\RequirePackage[compact]{titlesec}

\newcommand{\sectionbreak}{\clearpage}

\titleformat{\section}
{\color{myblue}\normalfont\Large\bfseries}
{\color{myblue}\thesection}{1em}{}

\titleformat{\subsection}
{\color{myblue}\normalfont\bfseries}
{\color{myblue}\thesubsection}{1em}{}

\titleformat{\subsubsection}
{\color{myblue}\normalfont\itseries}
{\color{myblue}\thesubsubsection}{1em}{}

\titlespacing\section{0pt}{0pt plus 0pt minus 0pt}{5pt plus 0pt minus 0pt}
\titlespacing\subsection{0pt}{4pt plus 0pt minus 0pt}{0pt plus 0pt minus 0pt}
\titlespacing\subsubsection{0pt}{0pt plus 0pt minus 0pt}{0pt plus 0pt minus 0pt}

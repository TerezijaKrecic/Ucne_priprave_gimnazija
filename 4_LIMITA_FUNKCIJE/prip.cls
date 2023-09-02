\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{prip}[2003/01/14 Oblika v0.9]
\LoadClass[11pt]{report}
\usepackage{amssymb}
\usepackage{amsmath}
\usepackage{graphicx}
\usepackage[slovene]{babel}
\usepackage[OT2,T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage{hyperref} % \href{tvoj link}{nadomestno besedilo}

\usepackage[dvipsnames]{xcolor} % ime barv: https://www.overleaf.com/learn/latex/Using_colours_in_LaTeX
\usepackage{color}
\definecolor{rdeca}{rgb}{1,0,0} % values Red, Green, Blue
\definecolor{modra}{rgb}{0,0,1} % values Red, Green, Blue

\pagestyle{empty}
\setlength{\textwidth}{16 true cm}
\setlength{\textheight}{36 true cm}
\setlength{\topmargin}{-10 true mm}
\setlength{\headheight}{10pt}
\setlength{\headsep}{5pt}
\setlength{\columnsep}{10pt} % razdalja med stolpci
\setlength{\columnseprule}{0pt}
\setlength{\oddsidemargin}{5pt}
\setlength{\evensidemargin}{5pt}
\setlength{\parindent}{0pt} % default \noindent pred vsakim paragrafom
\setlength{\parskip}{3pt} % razmik med odstavki

% slovenske crke
\catcode`\"=13
\def"#1{\v #1}

\def\RR{\mathbb{R}}
\def\CC{\mathbb{C}}
\def\QQ{\mathbb{Q}}
\def\NN{\mathbb{N}}
\def\ZZ{\mathbb{Z}}

\newcommand{\naslov}[1]{\subsection*{#1}} % okolje za podnaslove v poglavjih
\newcommand{\didopomba}[1]{\textcolor{modra}{\textsl{(#1)}}} % okolje za opombe učitelju
\newcommand{\vaje}[1]{\textcolor{OliveGreen}{\textsl{#1}}} % okolje za praktične vaje


\newcommand{\predmet}[1]{\gdef\predmet{#1}}
\newcommand{\razred}[1]{\gdef\razred{#1}}
\newcommand{\ucitelj}[1]{\gdef\ucitelj{#1}}
\newcommand{\sola}[1]{\gdef\sola{#1}}

% podatki o uri
% #1=st. ure
% #2=datum
% #3=tema
% #4=poglavje
% #5=oblika
% #6=pripomocki
\newenvironment{priprava}[6]
{\noindent{\scshape \predmet , \razred} \hfill {\bfseries #1 .\ ura}\\[-3mm] \hrule
\vskip 1mm
\begin{tabular}{ll}
{\bfseries Tema:} \makebox[62mm][l]{#3} & {\bfseries Poglavje:} \makebox[57mm][l]{#4} \\
{\bfseries Oblika:} \makebox[60mm][l]{#5} & {\bfseries Pripomo"cki:} \makebox[50mm][l]{#6}
\end{tabular}
\medskip
\hrule
\vskip 21.5cm\hrule\vskip 5pt
\noindent{\large \ucitelj , \textit{\sola}\hfill #2}
\vskip -22cm}
{\newpage}

\endinput 

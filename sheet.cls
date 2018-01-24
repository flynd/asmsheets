%
% Copyright (C) 2014-2018 Anders Olofsson
%
% Copying and distribution of this file, with or without modification,
% are permitted in any medium without royalty provided the copyright
% notice and this notice are preserved.  This file is offered as-is,
% without any warranty.
%
\ProvidesClass{sheet}
\PassOptionsToPackage{table}{xcolor}
\LoadClass{article}
\RequirePackage{pgf}
\RequirePackage{tikz}
\RequirePackage{multicol}
\RequirePackage{tabularx}
\RequirePackage{colortbl}
\RequirePackage{everypage}
\RequirePackage{listings}
\RequirePackage{amsmath}

\tikzstyle{every picture} = [inner sep=0pt, outer sep=0pt, font={\sheettablefont}]

\def\TX@find@end#1{%
   \def\@tempa{#1}%
   \ifx\@tempa\TX@%
      \toks@\expandafter{\the\toks@\AddBeforeEndtabularx}%
      \expandafter\TX@endtabularx
   \else\toks@\expandafter
      {\the\toks@\end{#1}}\expandafter\TX@get@body\fi}

\def\AddBeforeEndtabularx{\hline}

\newenvironment{@SheetTableBase}[3]{
\rowcolors{2}{\sheetrowcolor}{white}
\tikzpicture \draw node \bgroup
\tabularx{\columnwidth}{#2}
    \hline
    \rowcolor{\sheetheadercolor}
    \multicolumn{#1}{|l|}{\sheetheaderfont#3} \\
    \hline
}{
    %\hline
\endtabularx\egroup;
\endtikzpicture
\vspace{3mm}
}

\def\defsheet#1#2#3{%
\newenvironment{#1}[1]{\@SheetTableBase{#2}{#3}{##1}}{\end@SheetTableBase}%
}

\parindent=0pt

\def\pagefooter{
\begin{tikzpicture}[remember picture,overlay]
\draw [line width=1mm, fill=red]
(current page.south east) node [xshift=-.1in, yshift=.1in, anchor=south east, font={\rmfamily\normalsize}] {\pagefootertext};
\end{tikzpicture}
}

\def\pagefooter#1{
\AddEverypageHook{
\begin{tikzpicture}[remember picture,overlay]
\draw (current page.south east) node [xshift=-.1in, yshift=.1in, anchor=south east, font={\rmfamily\normalsize}] {#1};
\end{tikzpicture}
}}

\lstset{language=C,basicstyle=\small\ttfamily,breaklines=true}

% Disable italics in math mode
\DeclareMathVersion{nmath}
\DeclareSymbolFont{nletters}{OT1}{cmss}{m}{n}
\SetSymbolFont{letters}{nmath}{OT1}{cmss}{m}{n}
\DeclareSymbolFont{noperators}{OT1}{cmss}{m}{n}
\SetSymbolFont{operators}{nmath}{OT1}{cmss}{m}{n}
\SetMathAlphabet\mathit{nmath}{OT1}{cmss}{m}{n}
\SetMathAlphabet\mathrm{nmath}{OT1}{cmss}{m}{n}
\mathversion{nmath}

% Math symbols
\def\smul{\bar{\times}}
\def\umul{\times}
\def\sdiv{\bar{\div}}
\def\udiv{\div}
\def\smod{\bar{\%}}
\def\umod{\%}
\def\asr{\bar{\gg}}
\def\lsr{\gg}
\def\lsl{\ll}
\def\rol{\lll}
\def\ror{\ggg}
% Note: < and > doesn't render properly in math mode with current fonts
\def\slt{\bar{\text{<}}}
\def\ult{\text{<}}
\def\sle{\bar{\le}}
\def\ule{\le}
\def\sgt{\bar{\text{>}}}
\def\ugt{\text{>}}
\def\sge{\bar{\ge}}
\def\uge{\ge}
\def\eq{=}
\def\max{\wedge}
\def\min{\vee}

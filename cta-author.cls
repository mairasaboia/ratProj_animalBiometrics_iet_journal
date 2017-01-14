\newcommand\classname{IEE-CTA}
\newcommand\lastmodifieddate{2016/09/02}
\newcommand\versionnumber{0.1}

% Are we printing crop marks?
\newif\if@cropmarkson \@cropmarksontrue

%%Copyright footer updation%%
\newif\ifIET \IETtrue%
\newif\ifOTHER \OTHERfalse%
\newif\ifCCBY \CCBYfalse%
\newif\ifCCBYNC \CCBYNCfalse%
\newif\ifCCBYND \CCBYNDfalse%
\newif\ifCCBYNCND \CCBYNCNDfalse%



\NeedsTeXFormat{LaTeX2e}[2011/07/05]
\ProvidesClass{\classname}[\lastmodifieddate\space IET
                           Version \versionnumber^^J%
                           IET LaTeX Document Class^^J^^J]

\newif\ifqry\qryfalse
\newif\ifnoquery
\newif\ifrevises
\newif\iferratum\erratumfalse
\newif\ifaddendum\addendumfalse
\newif\ifweb
\newif\ifmathrsfs
\newif\ifprinter
\newif\iffproof
\newif\ifedtitle

\setlength{\paperheight}{297truemm}
\setlength{\paperwidth}{210truemm}

\DeclareOption{edtitle}{\edtitletrue}
\DeclareOption{draft}{\PassOptionsToPackage{draft}{graphicx}}
\DeclareOption{a4paper}{\PassOptionsToPackage{a4}{crop}}
\DeclareOption{centre}{\PassOptionsToPackage{center}{crop}}
\DeclareOption{crop}{\PassOptionsToPackage{cam}{crop}\global\@cropmarksontrue}
\DeclareOption{nocrop}{\PassOptionsToPackage{off}{crop}\global\@cropmarksonfalse}
\DeclareOption{info}{\PassOptionsToPackage{info}{crop}}
\DeclareOption{noinfo}{\PassOptionsToPackage{noinfo}{crop}}
\DeclareOption{courier}{\def\verbatim@font{\normalfont\ttfamily}}
\DeclareOption{times}{\def\verbatim@font{\normalfont\rmfamily}}

\DeclareOption{noquery}{\noquerytrue}
\DeclareOption{addendum}{\addendumtrue}
\DeclareOption{erratum}{\erratumtrue}
\DeclareOption{revises}{\revisestrue}
\DeclareOption{web}{\webtrue}
\DeclareOption{mathrsfs}{\mathrsfstrue}
\DeclareOption{printer}{\printertrue}
\DeclareOption{fproof}{\fprooftrue}

\DeclareOption{IET}{\IETtrue}%
\DeclareOption{OTHER}{\IETfalse\OTHERtrue}%
\DeclareOption{CCBY}{\IETfalse\CCBYtrue}%
\DeclareOption{CCBYNC}{\IETfalse\CCBYNCtrue}%
\DeclareOption{CCBYND}{\IETfalse\CCBYNDtrue}%
\DeclareOption{CCBYNCND}{\IETfalse\CCBYNCNDtrue}%

\ExecuteOptions{a4paper,nocrop,centre,info,proofbox}

\ProcessOptions

% Load all necessary packages
\RequirePackage[T1]{fontenc}
%\RequirePackage[T1,mtbold,mtplusscr]{mathtime}
\RequirePackage{crop,graphicx,array,amsthm,stfloats,upref,amsfonts,amssymb,cuted}
\RequirePackage{vruler}
\RequirePackage{amsmath}
\usepackage{endnotes,rotating}
\usepackage{times}

\usepackage{vruler}
\def\linenos{\setvruler[55pt][1][5][1][1][590pt][590pt][-14pt][\textheight]
\setvruler[55pt][1][5][1][1][10pt][10pt][-14pt][\textheight]}

\usepackage{color}

\definecolor{col1}{gray}{0.91}

\newcommand\@ptsize{0}

% Set twoside printing
\@twosidetrue

% Marginal notes are on the outside edge
\@mparswitchtrue

% Default font sizes
\renewcommand\normalsize{%
  \@setfontsize\normalsize{9\p@}{10\p@}%
  \abovedisplayskip 12\p@ \@plus 3\p@ \@minus4\p@
  \abovedisplayshortskip 3\p@ \@plus 1\p@ \@minus1\p@
  \belowdisplayshortskip 6\p@ \@plus 1\p@ \@minus2\p@
  \belowdisplayskip \abovedisplayskip
  \let\@listi\@listI}

\newcommand\erratumsize{%
  \@setfontsize\normalsize{10\p@}{12\p@}%
  \abovedisplayskip 12\p@ \@plus 3\p@ \@minus4\p@
  \abovedisplayshortskip 3\p@ \@plus 1\p@ \@minus1\p@
  \belowdisplayshortskip 6\p@ \@plus 1\p@ \@minus2\p@
  \belowdisplayskip \abovedisplayskip
  \let\@listi\@listI}

\normalsize
\let\@bls\baselineskip

\newcommand\small{%
  \@setfontsize\small{9\p@}{11\p@}%
  \abovedisplayskip 12\p@ \@plus1\p@ \@minus1\p@
  \abovedisplayshortskip 3\p@ \@plus 1\p@ \@minus1\p@
  \belowdisplayshortskip 2\p@ \@plus 1\p@ \@minus1\p@
  \def\@listi{\leftmargin\leftmargini
              \listparindent \parindent
              \topsep 6\p@ \@plus2\p@ \@minus1\p@
              \parsep \z@ \itemsep \z@}%
  \belowdisplayskip \abovedisplayskip}

\newcommand\ssmall{%
  \@setfontsize\ssmall{8\p@}{9\p@}%
  \abovedisplayskip 12\p@ \@plus2\p@ \@minus4\p@
  \abovedisplayshortskip \z@ \@plus \p@
  \belowdisplayshortskip 1\p@ \@plus2\p@ \@minus2\p@
  \def\@listi{\leftmargin\leftmargini
              \listparindent 1em
              \topsep 5\p@ \@plus 2\p@ \@minus 1\p@
              \parsep \z@ \itemsep \z@}%
  \belowdisplayskip \abovedisplayskip}

\newcommand\footnotesize{%
  \@setfontsize\footnotesize{8.25\p@}{12.5\p@}%
  \abovedisplayskip 12\p@ \@plus2\p@ \@minus4\p@
  \abovedisplayshortskip \z@ \@plus \p@
  \belowdisplayshortskip 1\p@ \@plus2\p@ \@minus2\p@
  \def\@listi{\leftmargin\leftmargini
              \listparindent 1em
              \topsep 5\p@ \@plus 2\p@ \@minus 1\p@
              \parsep \z@ \itemsep \z@}%
  \belowdisplayskip \abovedisplayskip}

\def\scriptsize{\@setfontsize\scriptsize{7\p@}{9\p@}}
\def\tiny{\@setfontsize\tiny{6\p@}{7\p@}}
\def\little{\@setfontsize\little{5\p@}{6\p@}}
\def\large{\@setfontsize\large{12\p@}{14\p@}}
\def\Large{\@setfontsize\Large{14\p@}{16\p@}}
\def\LARGE{\@setfontsize\LARGE{16\p@}{18\p@}}
\def\huge{\@setfontsize\huge{24\p@}{26\p@}}
\def\Huge{\@setfontsize\Huge{25\p@}{27\p@}}

\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}

% Line spacing
\setlength\lineskip{0\p@}
\setlength\normallineskip{0\p@}
\renewcommand\baselinestretch{}

% Paragraph dimensions and inter-para spacing
\setlength\parskip{0\p@}
\setlength\parindent{10pt}

% Set inter-para skips
\setlength\smallskipamount{6\p@ \@plus 1\p@ \@minus 1\p@}
\setlength\medskipamount{9\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\bigskipamount{12\p@ \@plus 4\p@ \@minus 4\p@}

% Page break penalties
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301

% Disallow widows and orphans
\clubpenalty 10000
\widowpenalty 10000

% Disable page breaks before equations, allow pagebreaks after
% equations and discourage widow lines before equations.
\displaywidowpenalty 100
\predisplaypenalty   10000
\postdisplaypenalty  2500

% Allow breaking the page in the middle of a paragraph
\interlinepenalty 0

% Disallow breaking the page after a hyphenated line
\brokenpenalty 10000

% Hyphenation; don't split words into less than three characters
\lefthyphenmin=3
\righthyphenmin=3


% Page layout dimensions

\setlength\headheight{3mm}%height of running head
\setlength\topmargin{13.1mm}% top margin 24.5mm
\addtolength\topmargin{-1in}% subtract out the 1 inch driver margin
\addtolength\topmargin{-\headheight}%  and the running head

\setlength\topskip{6.5\p@}% height of first line of text%% {10\p@}
\setlength\headsep{1.35pc}% space below running head
\addtolength\headsep{9pt}%   base to base with first line of text
\addtolength\headsep{-\topskip}%   base to base with first line of text

%\setlength\footskip{50.5\p@}% space above footer line
\ifCCBY\setlength\footskip{43.5\p@}\else%
\setlength\footskip{44.2\p@}\fi%
\setlength\maxdepth{.5\topskip}% pages can be short or deep by half a line?

\setlength\textwidth{180mm}% text measure excluding margins
\setlength\columnwidth{86mm}

\setlength\textheight{71\@bls}% text height is 72 baselines,
\addtolength\textheight{\topskip}%56+1-including first line of text

% Set the margins
\setlength\marginparsep{10\p@}
\setlength\marginparpush{15\p@}
\setlength\marginparwidth{1.5pc}

\newlength{\insidemargin}
\setlength{\insidemargin}{15mm}
\setlength\oddsidemargin{\insidemargin}
\addtolength\oddsidemargin{-1in}%subtract out the 1 inch driver margin
\setlength\@tempdima{\paperwidth}
\addtolength\@tempdima{-\textwidth}
\addtolength\@tempdima{-\insidemargin}
\setlength\evensidemargin{\@tempdima}
\addtolength\evensidemargin{-1in}

\setlength\columnsep{8mm}          % space between columns for double-column text
\setlength\columnseprule{0\p@}      % width of rule between two columns

% Footnotes
\setlength\footnotesep{0\p@}     % space between footnotes
% space between text and footnote
\setlength{\skip\footins}{23\p@ \@plus 3\p@ \@minus 3\p@}

% Float placement parameters

\setcounter{totalnumber}{10}
\setcounter{topnumber}{5}
\setcounter{bottomnumber}{5}

% The maximum part of the top or bottom of a text page that can be
% occupied by floats. This is set so that at least four lines of text
% fit on the page.
\renewcommand\topfraction{.921}
\renewcommand\bottomfraction{.921}
\renewcommand\textfraction{.079}
\renewcommand\floatpagefraction{.887}

% The same parameters repeated for double column output
\renewcommand\dbltopfraction{.965}
\renewcommand\dblfloatpagefraction{.077}

% Space between floats
\setlength\floatsep{18\p@ \@plus 2\p@ \@minus 2\p@}
% Space between floats and text
\setlength\textfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
% Space above and below an inline figure
\setlength\intextsep{18\p@ \@plus 2\p@ \@minus 2\p@}

% For double column floats
\setlength\dblfloatsep{18\p@ \@plus 3\p@ \@minus 1\p@}
\setlength\dbltextfloatsep{20\p@ \@plus 3\p@ \@minus 1\p@}

% Space left at top, bottom and inbetween floats on a float page.
\setlength\@fptop{0\p@}% no space above float page figures
\setlength\@fpsep{12\p@ \@plus 2fil}
\setlength\@fpbot{0\p@}

% The same for double column
\setlength\@dblfptop{0\p@}
\setlength\@dblfpsep{12\p@}
\setlength\@dblfpbot{0\p@}

%%%%%%%%%%%%%%%%%%%%%%%%%%%% Article Identification %%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\@default@journal@title{Journal Title}
\let\@journal@title\@default@journal@title
\def\articlenum@info{000000}
\def\year@info{\the\year}
\def\cyear@info{2014}
\def\vol@info{222}
\def\issue@info{222}
\def\part@info{00}
\def\firstpage@info{00}

\gdef\doi@string{0000000000}

\newcommand{\artname}[1]{#1}%

%\newcommand{\journal}[1]{%
%  \makeatletter
%  \InputIfFileExists{#1.cfg}{%
%    \message{Journal identification loaded from #1.cfg}}%
%  {\message{No configuration file for #1}}%
%  \makeatother}

\def\@journal@title{IET Control Theory \& Applications}

\def\@doi@fixed@field{10.1049/iet-cta.}
\def\@doi@variable@field{00000000000000000000}

\def\vol@info{224}

\def\printerinfo{{\fontsize{7.5}{10}\selectfont\itshape Printed and bound by Latimer Trend \& Company Ltd, Plymouth\par}\parskip5pt}

%
  \newcommand\circledonesize{\fontsize{6}{7}\selectfont}%   6.5/7
  \newcommand\circledone{%
  \raisebox{.8pt}{\hbox{\kern 2pt\raisebox{-.5pt}{%
    \circledonesize 1}\kern -2pt\raisebox{1.8pt}{\circle{7}}\kern -3pt}}}
%
  \newcommand\circledtwosize{\fontsize{6}{7}\selectfont}%   6.5/7
  \newcommand\circledtwo{%
  \raisebox{.8pt}{\hbox{\kern 2pt\raisebox{-.5pt}{%
    \circledtwosize 2}\kern -2pt\raisebox{1.8pt}{\circle{7}}\kern -3pt}}}
%
  \newcommand\circledthreesize{\fontsize{6}{7}\selectfont}%   6.5/7
  \newcommand\circledthree{%
  \raisebox{.8pt}{\hbox{\kern 2pt\raisebox{-.5pt}{%
    \circledthreesize 3}\kern -2pt\raisebox{1.8pt}{\circle{7}}\kern -3pt}}}
%
  \newcommand\circledfoursize{\fontsize{6}{7}\selectfont}%   6.5/7
  \newcommand\circledfour{%
  \raisebox{.8pt}{\hbox{\kern 2pt\raisebox{-.5pt}{%
    \circledfoursize 4}\kern -2pt\raisebox{1.8pt}{\circle{7}}\kern -3pt}}}
%
  \newcommand\circledfivesize{\fontsize{6}{7}\selectfont}%   6.5/7
  \newcommand\circledfive{%
  \raisebox{.8pt}{\hbox{\kern 2pt\raisebox{-.5pt}{%
    \circledfivesize 5}\kern -2pt\raisebox{1.8pt}{\circle{7}}\kern -3pt}}}
%
  \newcommand\circledsixsize{\fontsize{6}{7}\selectfont}%   6.5/7
  \newcommand\circledsix{%
  \raisebox{.8pt}{\hbox{\kern 2pt\raisebox{-.5pt}{%
    \circledsixsize 6}\kern -2pt\raisebox{1.8pt}{\circle{7}}\kern -3pt}}}
%
  \newcommand\circledsevensize{\fontsize{6}{7}\selectfont}%   6.5/7
  \newcommand\circledseven{%
  \raisebox{.8pt}{\hbox{\kern 2pt\raisebox{-.5pt}{%
    \circledsevensize 7}\kern -2pt\raisebox{1.8pt}{\circle{7}}\kern -3pt}}}

\newcommand{\page@extent@info}{\iferratum\relax\firstpage@info\else\ifweb\relax\firstpage@info--\pageref*{LastPage}\else\firstpage@info--\pageref{LastPage}\fi\fi}

\newcommand{\jourinf}{\bgroup\parindent=0pt%
\vbox{\fontsize{7}{9}\selectfont\sf\raggedright%
\issn@info\par%
\if@date@provided\@date\par\fi%
doi:{\ }\doi@string\par%
www.ietdl.org}\par\egroup}%

% Article information user commands
\def\CYear#1{\gdef\cyear@info{#1}}
\def\Year#1{\gdef\year@info{#1}}
\def\artname#1{\gdef\articlenum@info{#1}}
\def\Vol#1{\gdef\vol@info{#1}}
\def\Issue#1{\gdef\issue@info{#1}}
\def\Part#1{\gdef\part@info{#1}}
\def\@print@issn{1751-8644}

\newcommand\DOI[2][\@doi@fixed@field]{%
  \gdef\@doi@variable@field{#1}%
  \setDOI{#1}{#2}}

\newcommand{\setDOI}[2]{%
  \gdef\doi@string{#1#2}}

\newcommand{\issn@info}{ISSN\ \@print@issn}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Firstpage %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\firstpage#1{\gdef\firstpage@info{#1}}
\firstpage{1}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%% Page Styles %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\slinf{\hspace*{-482pt}\hbox to \textwidth{\hfil\bf {Techset Composition Ltd, Salisbury} Doc: \{IEE\} \jobname.tex\hfil}}

\newcommand{\titlepageheadline}{%
\hbox to \textwidth{\vbox{\hsize\textwidth{\sf\fontsize{16}{18}\bfseries\selectfont \rightline{www.ietdl.org}}\vspace*{12.5pt}
\hbox to \textwidth{\vbox{\hsize22.2pc{\sf\jourinf}\vbox{\hsize20.55pc{\hfill\includegraphics{iet-ctalogo.eps}}}}}\vspace*{1.5pt}
\hbox to \textwidth{\vbox{{\hfill\fontsize{9}{10}\selectfont\sf \issn@info\kern4.8pt}}}
}}\vbox{\raisebox{142pt}[70pt][70pt]{\slinf}}}
%

\def\today{\number\day/\ifcase\month\or
 1\or 2\or 3\or 4\or 5\or 6\or 7\or 8\or 9\or 10\or 11\or 12\fi/\number\year}

\newcommand{\evenpagefooter}{\vbox{\hbox to \textwidth{\hfill\textit{IET Control\ \kern1pt Theory Appl.,} \ifrevises\year@info, Vol.~\vol@info, Iss.~\issue@info,\ \else\fi \iferratum\relax p.~\else pp.~\fi\page@extent@info}
\ifIET
\vbox{\hbox to \textwidth{\thepage\hfill$\copyright$ The Institution of Engineering and Technology \cyear@info}}
\else
\ifOTHER
\vbox{\hbox to \textwidth{\thepage\hfill$\copyright$ Yet to come}}
\else
\ifCCBY
\vbox{\hbox to \textwidth{\hfill This is an open access article published by the IET under the Creative Commons}}\par%
\vbox{\hbox to \textwidth{\thepage\hfill Attribution License (http://creativecommons.org/licenses/by/3.0/)}}%
\else
\ifCCBYNC
\vbox{\hbox to \textwidth{\hfill This is an open access article published by the IET under the Creative Commons}}\par%
\vbox{\hbox to \textwidth{\thepage\hfill Attribution-NonCommercial License (http://creativecommons.org/licenses/by-nc/3.0/)}}%
\else
\ifCCBYND
\vbox{\hbox to \textwidth{\hfill This is an open access article published by the IET under the Creative Commons}}\par%
\vbox{\hbox to \textwidth{\thepage\hfill Attribution-NoDerivs License (http://creativecommons.org/licenses/by-nd/3.0/)}}%
\else
\ifCCBYNCND
\vbox{\hbox to \textwidth{\hfill This is an open access article published by the IET under the Creative Commons}}\par%
\vbox{\hbox to \textwidth{\thepage\hfill Attribution-NonCommercial-NoDerivs License (http://creativecommons.org/licenses/by-nc-nd/3.0/)}}
\else
\fi
\fi
\fi
\fi
\fi%
\fi%
}}

\newcommand{\oddpagefooter}{\vbox{\hbox to \textwidth{\textit{IET Control\ \kern1pt Theory Appl.,} \ifrevises\year@info, Vol.~\vol@info, Iss.~\issue@info,\ \else\fi \iferratum\relax p.~\else pp.~\fi\page@extent@info\hfill}
\ifIET
\vbox{\hbox to \textwidth{$\copyright$ The Institution of Engineering and Technology \cyear@info\hfill\thepage}}
\else
\ifOTHER
\vbox{\hbox to \textwidth{$\copyright$ Yet to come\hfill\thepage}}%
\else
\ifCCBY
\vbox{\hbox to \textwidth{This is an open access article published by the IET under the Creative Commons\hfill}}\par%
\vbox{\hbox to \textwidth{Attribution License (http://creativecommons.org/licenses/by/3.0/)\hfill\thepage}}%
\else
\ifCCBYNC
\vbox{\hbox to \textwidth{This is an open access article published by the IET under the Creative Commons\hfill}}\par%
\vbox{\hbox to \textwidth{Attribution-NonCommercial License (http://creativecommons.org/licenses/by-nc/3.0/)\hfill\thepage}}%
\else
\ifCCBYND
\vbox{\hbox to \textwidth{This is an open access article published by the IET under the Creative Commons\hfill}}\par%
\vbox{\hbox to \textwidth{Attribution-NoDerivs License (http://creativecommons.org/licenses/by-nd/3.0/)\hfill\thepage}}%
\else
\ifCCBYNCND
\vbox{\hbox to \textwidth{This is an open access article published by the IET under the Creative Commons\hfill}}\par%
\vbox{\hbox to \textwidth{Attribution-NonCommercial-NoDerivs License (http://creativecommons.org/licenses/by-nc-nd/3.0/)\hfill\thepage}}
\else
\fi
\fi
\fi
\fi
\fi%
\fi%
}}%

\newcommand{\oddpagefootline}{%
     \hbox to \textwidth{\fontsize{8}{10}\selectfont\sf\oddpagefooter\hfill}
     }%

\newcommand{\evenpagefootline}{%
     \hbox to \textwidth{\fontsize{8}{10}\selectfont\sf\evenpagefooter}
     }%

\newcommand{\evenerratumfoot}{\vbox{\fontsize{8}{10}\selectfont\sf%
\hbox to \textwidth{\thepage\hfill}\par%
\hbox to \textwidth{{$\copyright$ The Institution of Engineering and Technology \cyear@info}\hfill{\textit{IET Control\ \kern1pt Theory Appl.,}\ \cyear@info,\ \ifrevises\year@info, Vol.~\vol@info, Iss.~\issue@info,\ \else\fi p.~\page@extent@info}}}}%

\newcommand{\odderratumfoot}{\vbox{\fontsize{8}{10}\selectfont\sf%
\hbox to \textwidth{\hfill\thepage}\par%
\hbox to \textwidth{{\textit{IET Control\ \kern1pt Theory Appl.,}\ \cyear@info,\ \ifrevises\year@info, Vol.~\vol@info, Iss.~\issue@info,\ \else\fi p.~\page@extent@info}\hfill{$\copyright$ The Institution of Engineering and Technology \cyear@info}}}}%

%\setcounter{footnote}{0}
\renewcommand\thefootnote{\@fnsymbol\c@footnote}

% No headers for float pages - requires the floatpag package
%% \floatpagestyle{headings}

\def\ps@titlepage{%
  \let\@evenhead\@empty%
  \let\@oddhead\@empty%
  \def\@evenfoot{\evenpagefootline}
  \def\@oddfoot{\oddpagefootline}%
  \def\authormark##1{\def\leftmark{##1}}%
  \def\titlemark##1{\markboth{##1}{##1}}}%

\def\ps@erratumpage{%
  \def\@evenhead{\hbox to \hsize{\sf\fontsize{16}{18}\bfseries\selectfont www.ietdl.org\hfill}}
  \def\@oddhead{\hbox to \hsize{\sf\fontsize{16}{18}\bfseries\selectfont www.ietdl.org\hfill}}%
  \def\@evenfoot{\evenerratumfoot}
  \def\@oddfoot{\odderratumfoot}%
}%

\def\ps@headings{%
  \let\@evenhead\@empty%
  \let\@oddhead\@empty%
  \def\@oddfoot{\oddpagefootline}%
  \def\@evenfoot{\evenpagefootline}%
  \def\authormark##1{\def\leftmark{##1}}%
  \def\titlemark##1{\markboth{##1}{##1}}}%

\def\ps@myheadings{%
  \let\@oddfoot\@empty%
  \let\@evenfoot\@empty%
  \def\@evenhead{\hfil}%
  \def\@oddhead{\hfil}%
  \def\authormark##1{\def\leftmark{##1}}%
  \def\titlemark##1{\markboth{##1}{##1}}}

\def\ps@queryheadings{%
  \let\@oddfoot\@empty%
  \let\@evenfoot\@empty%
  \let\@evenhead\@empty%
  \let\@oddhead\@empty%
}%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%
% Sectional units
%

% Counters
\newcounter{part}
\newcounter{section}
\newcounter{rsection}
\newcounter{subsection}[section]
\newcounter{rsubsection}[section]
\newcounter{subsubsection}[subsection]
\newcounter{paragraph}[subsubsection]
\newcounter{subparagraph}[paragraph]
\newcounter{refsection}[section]
\newcounter{figure}
\newcounter{scolfig}[figure]
\newcounter{table}

% Form of the numbers
\newcommand\thepage{\arabic{page}}
\renewcommand\thesection{\arabic{section}}
\renewcommand\thesubsection{{\thesection.\arabic{subsection}}}
\renewcommand\thesubsubsection{{\thesubsection.\arabic{subsubsection}}}
\renewcommand\theparagraph{\thesubsubsection.\arabic{paragraph}}
\renewcommand\thesubparagraph{\theparagraph.\arabic{subparagraph}}
\renewcommand\theequation{\arabic{equation}}

% Form of the words
\newcommand\appendixname{Appendix}
\newcommand\abstractname{Abstract}
\newcommand\refname{References}
\newcommand\bibname{Bibliography}
\newcommand\indexname{Index}
\newcommand\figurename{Fig}
\newcommand\scolfigname{Fig}
\newcommand\tablename{Table}
\newcommand\keywordsname{Keywords}

% Clearemptydoublepage should really clear the running heads too
\newcommand{\clearemptydoublepage}{\newpage{\pagestyle{empty}\cleardoublepage}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Titling Macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Reset default command signatures

\def\title{\@ifnextchar[{\@title@wst@}{\@title@nst@}}
\def\@title@wst@[#1]{\titlemark{#1}\@title@assign@}
\def\@title@nst@#1{\titlemark{#1}\@title@assign@{#1}}
\def\@title@assign@#1{\def\@title{#1}}

\def\author{\@ifnextchar[{\@author@wst@}{\@author@nst@}}
\def\@author@wst@[#1]{\authormark{#1}\@author@assign@}
\def\@author@nst@#1{\authormark{#1}\@author@assign@{#1}}
\def\@author@assign@#1{\gdef\@author{#1}\global\@author@providedtrue}

% It is for titling commands
\newif\if@supertitle@provided \@supertitle@providedfalse
\newif\if@author@provided \@author@providedfalse
\newif\if@date@provided \@date@providedfalse
\newif\if@rec@provided \@rec@providedfalse
\newif\if@rev@provided \@rev@providedfalse
\newif\if@acc@provided \@acc@providedfalse
\newif\if@abstract@provided \@abstract@providedfalse%
\newif\if@keywords@provided \@keywords@providedfalse

\def\supertitle#1{\def\@supertitle{#1}\global\@supertitle@providedtrue}
\def\addno#1{\@hangfrom{#1}}
\def\address#1{\gdef\@address{{#1\endgraf}}}

\def\date#1{\gdef\@date{#1}\global\@date@providedtrue}
\gdef\rec#1{Received on #1\par}
\gdef\rev#1{Revised on #1\par}
\gdef\acc#1{Accepted on #1\par}

\newbox\@abstractbox
\newenvironment{abstract}{\global\@abstract@providedtrue%
  \global\setbox\@abstractbox\vbox\bgroup\fontsize{9}{11}\selectfont\sf\noindent\textbf{\abstractname:}%
  \@afterindentfalse\@afterheading}{\par\egroup}%

\def\keywords#1{\gdef\@keywords{#1}\global\@keywords@providedtrue}

\def\@fnsymbol#1{\ifcase#1\or *\or \dagger\or \ddagger\or
    \S\or \P\or \|\or **\or \dagger\dagger
    \or \ddagger\ddagger \else\@ctrerr\fi}

%% Reimplement Titling Layout

\newcommand\maketitle{\par%
  \twocolumn[
  \begingroup
  \renewcommand\footnoterule{\begingroup\leftskip\z@\noindent
  \rule{84mm}{0.5\p@}\vspace{8\p@}\endgroup}
    \iferratum\relax\thispagestyle{erratumpage}\else\thispagestyle{titlepage}\fi%
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \global\@topnum\z@%Prevents figures from going at top of page.
    \@maketitle
    \twocolumn
  \endgroup]
  \@afterindentfalse
  \@afterheading
  \begingroup
  \def\thefootnote{}
  \endgroup
  \global\let\maketitle\relax
  \global\let\@maketitle\relax}

\def\aftdoispace{\vspace{89.2\p@}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\aopspace#1{\vspace*{#1}}

\iferratum\relax%
\let\normalsize\erratumsize%
\def\@maketitle{%
  \ifx\@journal@title\@default@journal@title
  \ClassError{TandF}{Journal Code not specified. Processing stopped.}
  {The journal code is a required field. Your LaTeX file must contain\MessageBreak
   \protect\journal{JJJJ}, where JJJJ is the four letter journal code.}%
  \fi
  \begingroup%
  \vskip15.5pt%
   \vbox{\fontsize{20}{22}\selectfont\sf\bfseries\raggedright%
   {\@title\vphantom{yqQl}}\par}\par%
  \endgroup%
  \vspace{14\p@ plus 4\p@ minus 3\p@}%
  }
\else%
\def\@maketitle{%
  % Check if necessary information is present:
  \ifx\@journal@title\@default@journal@title
  \ClassError{TandF}{Journal Code not specified. Processing stopped.}
  {The journal code is a required field. Your LaTeX file must contain\MessageBreak
   \protect\journal{JJJJ}, where JJJJ is the four letter journal code.}%
  \fi
  \raggedright%
  \begingroup
  \vspace*{-22pt}
  \hbox to \textwidth{\begin{minipage}[b]{382pt}
    {\fontsize{9}{10}\sf\selectfont\raggedright\@journal@title}\par%
    \vskip14pt%
   \if@supertitle@provided
    {\fontsize{9}{10}\sf\fontshape{it}\selectfont\raggedright%
    {\@supertitle\vphantom{yqQl}}\par}%
   \else
    \vspace{10\p@}%
   \fi%
   \end{minipage}\hfill%
   \begin{minipage}[b]{128pt}
   \hbox{\raise-2pt\hbox{\includegraphics[width=128pt]{IET_Journals_Logo.eps}}}%
   \end{minipage}}\par%
  \nointerlineskip\vskip6.3pt\nointerlineskip%
  \iferratum\else\rule{\textwidth}{.5pt}\par\fi%
  \nointerlineskip\vskip16.12pt\nointerlineskip%
  \hbox to \textwidth{\begin{minipage}[t]{378pt}\vspace*{0pt}%
   {\fontsize{18}{20}\selectfont\sf\bfseries\raggedright%
   {\@title\vphantom{yqQl}}\par}%
   \vspace{9pt}%
  \end{minipage}\hfill%
  \begin{minipage}[t]{115pt}\vspace*{0pt}%
  \jourinf%
  \end{minipage}}\par%
   {\begingroup
     \if@author@provided%
      {\fontsize{11}{13}\sf\fontshape{it}\selectfont\@author}%
      \vspace{3.8\p@}%
     \else
      \vspace{0\p@}%
     \fi
    \endgroup\par}%
   {\fontsize{8}{10}\sf\fontshape{it}\selectfont{\@address}\par}%
  \vspace{13.7\p@}%
  \endgroup
  \if@abstract@provided%
  \begingroup
   {\noindent\unvbox\@abstractbox\par}%
  \endgroup
   \vspace{5.2\p@}%
  \else
   \vspace{0\p@}%
  \fi
  \if@keywords@provided%
  \begingroup
   {\parindent=0pt\normalfont
   \textbf{\keywordsname:}\enskip \@keywords\par}%
   \endgroup
  \else%
   \vspace{0\p@}%
  \fi%
  \iferratum\else\rule{\textwidth}{.5pt}\par\fi
  \vspace{20\p@ plus 4\p@ minus 3\p@}%
  }
\fi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Lastpage %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{lastpage}

\AtBeginDocument{%
\usepackage{longtable}}

\AtEndDocument{%
   \message{Setting LastPage}%
   \clearpage\lastpage@putlabel}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%% Sectioning macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Lowest level heading that takes a number by default
\setcounter{secnumdepth}{3}

% Reset the default section macros to help with title casing
\def\@sect#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{\@seccntformat{#1}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #6{%
        {\hskip #3\relax\@svsec}%
          \interlinepenalty \@M
% Modified to uppercase H1's and titlecase the rest
          \ifnum #2>1\relax
             {#8}%
          \else
            {#8}%
          \fi
        \@@par}%
    \endgroup
    \csname #1mark\endcsname{#7}%
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname}%
      \fi
      #7}%
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8:\ifnum#2=4\relax\else\hskip8.5pt\fi}%
      \csname #1mark\endcsname{#7}%
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
          \protect\numberline{\csname the#1\endcsname}%
        \fi
        #7}}%
  \fi
  \@xsect{#5}}

% H1
\def\section{%
\renewcommand{\@seccntformat}[1]{{{\csname the##1\endcsname\hskip16pt}}}
  \@startsection{section}{1}{\z@}
  {-18\p@ plus -2\p@ minus -1\p@}{10\p@}
  {\reset@font\fontsize{10}{11}\sf\bfseries\raggedright}}

% H2
\def\subsection{%
\renewcommand{\@seccntformat}[1]{{{\it\csname the##1\endcsname\hskip12.5pt}}}
  \@startsection{subsection}{2}{\z@}
  {-13\p@ plus -2\p@ minus -1\p@}{9\p@}
  {\reset@font\normalsize\sf\fontshape{it}\selectfont\raggedright}}

% H3
\def\subsubsection{%
  \@startsection{subsubsection}{3}{\z@}
  {-7\p@ plus -2\p@ minus -1\p@}{-0.0001\p@}
  {\reset@font\normalsize\sf\fontshape{it}\selectfont\raggedright}}

\def\paragraph{%
  \@startsection{paragraph}{4}{\z@}
  {-13\p@ plus -1\p@}{-0.5em}
  {\reset@font\normalfont\normalsize\itshape}}


 % H5
 \def\subparagraph{%
   \@startsection{subparagraph}{5}{\z@}
   {-12\p@ plus -1\p@}{-1em}
   {\indent\reset@font\normalfont\normalsize%\bfseries
   }}

\def\refsection{%
  \@startsection{section}{1}{\z@}%
  {-18\p@ plus -2\p@ minus -2\p@}{7.5\p@}%
  {\reset@font\fontsize{10}{11}\sf\bfseries\raggedright}}%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Footnotes %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\@makefnmark{$^{\@thefnmark}$}%
\renewcommand\footnoterule{\begingroup\leftskip\z@\noindent
  \rule{84mm}{0.5\p@}\vspace{5\p@}\setcounter{footnote}{0}\endgroup}

\newcommand\@makefntext[1]{%
  \begingroup%
    \leftskip=\z@\rightskip=\z@%
    \footnotesize%
    \setlength\parindent{0pt}%
    \@makefnmark\ignorespaces \textit{#1}%
  \endgroup}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% From ifmtarg.sty
% Copyright Peter Wilson and Donald Arseneau, 2000
\begingroup
\catcode`\Q=3
\long\gdef\@ifmtarg#1{\@xifmtarg#1QQ\@secondoftwo\@firstoftwo\@nil}
\long\gdef\@xifmtarg#1#2Q#3#4#5\@nil{#4}
\long\gdef\@ifnotmtarg#1{\@xifmtarg#1QQ\@firstofone\@gobble\@nil}
\endgroup
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%% PostScript Rotation Macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@rotate \@rotatefalse
\newif\if@rotatecenter \@rotatecenterfalse
\def\rotatecenter{\global\@rotatecentertrue}
\def\rotateendcenter{\global\@rotatecenterfalse}
\def\rotate{\global\@rotatetrue}
\def\endrotate{\global\@rotatefalse}
\newdimen\rotdimen
\def\rotstart#1{\special{ps: gsave currentpoint currentpoint translate
    #1 neg exch neg exch translate}}
\def\rotfinish{\special{ps: currentpoint grestore moveto}}
\def\rotl#1{\rotdimen=\ht#1\advance\rotdimen by \dp#1
    \hbox to \rotdimen{\vbox to\wd#1{\vskip \wd#1
    \rotstart{270 rotate}\box #1\vss}\hss}\rotfinish}
\def\rotr#1{\rotdimen=\ht #1\advance\rotdimen by \dp#1
    \hbox to \rotdimen{\vbox to \wd#1{\vskip \wd#1
    \rotstart{90 rotate}\box #1\vss}\hss}\rotfinish}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%% Figures and Tables %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand \thefigure {\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename\nobreakspace\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\renewcommand\thetable{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename\nobreakspace\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
  
\setlength\abovecaptionskip{7.5\p@}
\setlength\belowcaptionskip{0\p@}

\def\fnum@figure{\sf\bfseries Fig.~\thefigure}

\newcommand{\figfooter}[2]{\par\fontsize{7}{9}\selectfont\textit{#1\ }#2\par}%

\long\def\@makecaption#1#2{\fontsize{8}{9}\selectfont%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1. #2}%
  \ifdim \wd\@tempboxa >\hsize
    {#1}\enskip \textit{#2}\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
  
\begingroup
\catcode`\Q=3
\long\gdef\@ifmtarg#1{\@xifmtarg#1QQ\@secondoftwo\@firstoftwo\@nil}
\long\gdef\@xifmtarg#1#2Q#3#4#5\@nil{#4}
\long\gdef\@ifnotmtarg#1{\@xifmtarg#1QQ\@firstofone\@gobble\@nil}
\endgroup

\newbox\tablecaptionbox
\long\def\@tablecaption#1#2{\par%
  \setbox\tablecaptionbox=\vbox{\hsize\textwidth%
    {{\sf\fontsize{8}{9}\selectfont\bfseries #1}\enskip {\sf\fontsize{7}{9}\selectfont#2}}\strut}%
    \unvbox\tablecaptionbox\par%
  \vspace{\belowcaptionskip}
  }%

\def\tablesource#1{\@hangfrom{\textit{Source:\hskip6pt}}#1\par}
\def\tablenote#1{\@hangfrom{\textit{Note:\hskip6pt}}#1\par}
\def\tablefoot#1{%
\def\tfmark##1{\@hangfrom{\textsuperscript{##1}\hskip5pt}}%
#1\par}

\def\ttext#1#2{{#1\enspace}{#2\par}\par}
\def\tabletext#1#2{\@hangfrom{#1\enspace}{#2}\par}

\def\hrulefill{\leavevmode\leaders\hrule height 0.5pt\hfill\kern\z@}

\def\thetable{\@arabic\c@table}%
\def\fps@table{tbp}%
\def\ftype@table{3}%
\def\ext@table{lot}%
\def\fnum@table{\tablename\,\thetable}%
\def\table{\let\@makecaption\@tablecaption\@float{table}}%
\def\endtable{\end@float}%
\@namedef{table*}{\let\@makecaption\@tablecaption\@dblfloat{table}}%
\@namedef{endtable*}{\end@dblfloat}%

\newdimen\tempdime%
\newbox\temptbox%

\newlength{\abovefigskip}%
\newlength{\belowfigskip}%
\setlength{\abovefigskip}{\z@}%
\setlength{\belowfigskip}{\z@}%

\def\toprule{\noalign{\ifnum0=`}\fi%
  \hrule \@height 1.2\p@ \@width \z@%
  \hrule \@height 1\p@ \@width\hsize%
  \hrule \@height 3.5\p@ \@width \z@%
  \futurelet \@tempa\@xhline}%

\def\midrule{\noalign{\ifnum0=`}\fi%
  \hrule \@height 3.5\p@ \@width \z@%
  \hrule \@height 0.5\p@ \@width\hsize%
  \hrule \@height 6.5\p@ \@width\z@%
  \futurelet \@tempa\@xhline}%

\def\botrule{\noalign{\ifnum0=`}\fi%
  \hrule \@height 3.5\p@ \@width \z@%
  \hrule \@height 1\p@ \@width\hsize%
  \futurelet \@tempa\@xhline}%

% Table and array parameters%
\setlength\arraycolsep{.5em}%
\setlength\tabcolsep{.5em}%
\setlength\arrayrulewidth{.25pt}%
\setlength\doublerulesep{2.5pt}%
\renewcommand\arraystretch{1}%

\def\hrulefill{\leavevmode\leaders\hrule height .25pt\hfill\kern\z@}%

\newcolumntype{P}[1]{>{\raggedright\let\\\@arraycr\hangindent1em}p{#1}}%

\newenvironment{processtable}[3]{\setbox\temptbox=\hbox{{\fontsize{7}{8}\selectfont\sf #2}}%
\tempdime\wd\temptbox\@processtable{#1}{#2}{#3}{\tempdime}}%
{\relax}%

\newenvironment{fwprocesstable}[3]{\setbox\temptbox=\hbox{{\fontsize{7}{8}\selectfont\sf #2}}%
\tempdime\wd\temptbox\@fwprocesstable{#1}{#2}{#3}{\tempdime}}%
{\relax}%

\newcommand{\@processtable}[4]{%
\if!#1!%
\addtocounter{table}{-1}%%ADDED ON 21/12/05
\def\fnum@table{}%
\else%
\def\fnum@table{{\tablename}\enspace\thetable}%
\fi%
\let\@makecaption\@tablecaption
\if@rotate
\setbox4=\vbox to \hsize{\vss\hbox to \textheight{%
\begin{minipage}{#4}%
\@ifmtarg{#1}{}{\caption{#1}}{\fontsize{7}{8}\selectfont\sf #2}%
\vskip5\p@\noindent
\parbox{#4}{\fontsize{7}{8}\selectfont\sf #3\par}%
\end{minipage}}\vss}%
\rotr{4}
\else
\hbox to \hsize{\hfil\begin{minipage}[t]{#4}%
%\vskip2.9pt
\@ifmtarg{#1}{}{\caption{#1}}{\fontsize{7}{8}\selectfont\sf #2}%
\vskip5\p@\noindent
\parbox{#4}{\fontsize{7}{8}\selectfont\sf #3\par}%
\end{minipage}\hfil}\fi}%


\newenvironment{@fwprocesstable}[4]{%
\if!#1!%
\addtocounter{table}{-1}%
\def\fnum@table{}%
\else%
\def\fnum@table{{\tablename}\enspace\thetable}%
\fi%
\setbox4=\hbox to \textwidth{{\hfil\begin{minipage}[t]{#4}%
\caption{#1}{\fontsize{7}{8}\selectfont\sf #2}%
\@ifmtarg{#3}{}{\vskip5pt\noindent%
\parbox{#4}{\fontsize{7}{8}\selectfont\sf #3\par}}%
\end{minipage}\hfil}}%
\centering\box4}%
{\relax}%


\newcommand{\tabhead}[1]{#1}%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Lists %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\labelenumi{{\rm\arabic{enumi}.}}
\def\theenumi{\arabic{enumi}}
\def\labelenumii{{\rm(\alph{enumii})}}
\def\theenumii{\alph{enumii}}
\def\p@enumii{\theenumi}
\def\labelenumiii{{\rm(\arabic{enumiii})}}
\def\theenumiii{\roman{enumiii}}
\def\p@enumiii{\theenumi(\theenumii)}
\def\labelenumiv{{\rm(\arabic{enumiv})}}
\def\theenumiv{\Alph{enumiv}}
\def\p@enumiv{\p@enumiii\theenumiii}
\def\labelitemi{$\bullet$}
\def\labelitemii{$\circ$}
\def\labelitemiii{$\bullet$}
\def\labelitemiv{$\bullet$}

\setlength{\leftmargini}{\z@}
\setlength{\leftmarginii}{\z@}
\setlength{\leftmarginiii}{\z@}
\setlength{\leftmarginiv}{\z@}

\def\enumargs{%
   \partopsep     \z@
   \itemsep       \z@
   \parsep        \z@
   \rightmargin   \z@
%   \labelsep      0.5em
   \listparindent \parindent
   \itemindent    \z@}

\def\enumerate{%
    \@ifnextchar[{\@numerate}{\@numerate[3.]}}

\def\@numerate[#1]{%
     \ifnum \@enumdepth >3 \@toodeep\else
     \advance\@enumdepth \@ne
     \edef\@enumctr{enum\romannumeral\the\@enumdepth}
     \list{\csname label\@enumctr\endcsname}{%
       \enumargs
       \setlength{\leftmargin}{\csname leftmargin\romannumeral\the\@listdepth\endcsname}
       \usecounter{\@enumctr}
       \def\makelabel##1{{##1\hskip5pt}}}%
     \fi
   }
\def\endenumerate{\endlist\advance \@listdepth -1}

% Changes to the list parameters for itemize
\def\itemargs{%
   \partopsep     \z@
   \itemsep       \z@
   \parsep        \z@
   \rightmargin   \z@
%   \labelsep      0.5em
   \listparindent \parindent
   \itemindent    \z@}

\def\itemize{%
    \@ifnextchar[{\@itemize}{\@itemize[$\bullet$]}}

\def\@itemize[#1]{%
     \ifnum \@itemdepth >3 \@toodeep\else
     \advance\@itemdepth \@ne
     \edef\@itemctr{item\romannumeral\the\@itemdepth}
     \list{\csname label\@itemctr\endcsname}{%
       \itemargs
       \setlength{\leftmargin}{\csname leftmargin\romannumeral\the\@listdepth\endcsname}
       \def\makelabel##1{{##1\hskip5pt}}}%
     \fi
   }
\let\enditemize\endlist

\setlength{\topsep}{6\p@}%
\setlength{\itemsep}{\z@}

\def\@listI{\leftmargin\leftmargini\topsep10.5\p@ plus 1\p@}
\let\@listi\@listI
\@listi
\def\@listii{\leftmargin\leftmarginii\topsep\z@}
\def\@listiii{\leftmargin\leftmarginiii\topsep\z@}
\def\@listiv{\leftmargin\leftmarginiv\topsep\z@}
\def\@listv{\leftmargin\leftmarginv\topsep\z@}
\def\@listvi{\leftmargin\leftmarginvi\topsep\z@}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% unnumbered list %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newenvironment{description}{%
  \begin{list}{}{%
      \usecounter{enumi}%
      \setlength{\itemsep}{\z@}%
      \setlength{\labelwidth}{\z@}%
      \setlength{\leftmargin}{1em}%
      \setlength{\itemindent}{-1em}}}%
{\end{list}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



\def\endnomenclature{\endlist\advance \@listdepth -1}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Extracts %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\quotation{\par\begin{list}{}{\small%  Extracts in small type
      \setlength{\topsep}{6.5\p@}%
      \setlength{\itemsep}{\z@}%
      \setlength\labelwidth{\z@}%
      \setlength\labelsep{\z@}%
      \setlength\leftmargin{20\p@}%
      \listparindent \parindent}%
  \item[\vrule width\z@ height 9\p@]}
\def\endquotation{\end{list}}
\let\quote\quotation
\let\endquote\endquotation
\newcommand{\source}[1]{\newline\hbox{}\hfill{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\qedsymbol}{\ensuremath{\square}}%\ensuremath{\blacksquare}
\renewenvironment{proof}[1][\proofname]{
  \pushQED{\qed}%
  \normalfont \topsep12\p@\@plus3\p@\relax
  \trivlist
  \item[\hskip\labelsep
        \itshape
    #1:]\ \ignorespaces
}{%
  \popQED\endtrivlist\@endpefalse
}
\providecommand{\proofname}{Proof}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%% Acknowledgments %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcounter{savesecnumdepth}

\providecommand{\ackname}{Acknowledgements}
\newcommand{\ack}[1][\ackname]{%
  \setcounter{savesecnumdepth}{\value{secnumdepth}}%
%  \setcounter{secnumdepth}{0}%
  \section{\bf #1}%
  \setcounter{secnumdepth}{\value{savesecnumdepth}}%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newenvironment{thebibliography}[1]{}%

\usepackage[square,sort&compress]{natbib}
\bibpunct[, ]{[}{]}{;}{n}{,}{,}

\renewcommand\NAT@sep{,}

\def\NAT@space{\,}

%\newcommand{\citenumfont}[1]{{#1}}
\renewcommand\bibnumfmt[1]{{#1}}

\renewcommand\NAT@bibsetnum[1]{\fontsize{10}{12}\selectfont
  \refsection{\refname}%
  \vspace*{-0.5pt}%
      \settowidth\labelwidth{\@biblabel{#1}}%
      \setlength\leftmargin{\z@}%
      \setlength{\labelsep}{8pt}%
      \addtolength{\leftmargin}{\labelwidth}%
      \addtolength{\leftmargin}{\labelsep}
   \setlength{\itemsep}{\z@}
  \setlength{\parsep}{\z@}%
   \ifNAT@openbib
     \addtolength{\leftmargin}{\bibindent}%
     \setlength{\itemindent}{-\bibindent}%
     \setlength{\listparindent}{\itemindent}%
     \setlength{\parsep}{0pt}%
   \fi
}

\renewenvironment{thebibliography}[1]{%
 \list
   {\@biblabel{\arabic{NAT@ctr}}}{\@bibsetup{#1}%
    \setcounter{NAT@ctr}{0}}%
    \ifNAT@openbib
      \newcommand\newblock{\par}
    \else
      \newcommand\newblock{\hskip .11em \@plus.33em \@minus.07em}%
    \fi
    \sloppy\clubpenalty4000\widowpenalty4000
    \sfcode`\.=1000\relax
    \let\citeN\cite \let\shortcite\cite
    \let\citeasnoun\cite
 }{\def\@noitemerr{%
  \PackageWarning{natbib}
     {Empty `thebibliography' environment}}%
  \endlist\vskip-\lastskip}


\newenvironment{thereferences}{%
  \begingroup
  \small
  \setcounter{secnumdepth}{0}
\refsection{\bibname}
%  \refsection*{\bibname}%
  \vskip2pt
  \begin{list}{}{%
      \usecounter{enumi}%
      \setlength{\itemsep}{\z@}%
      \setlength{\labelwidth}{0pt}%
      \setlength{\leftmargin}{1pc}%
      \setlength{\itemindent}{-1pc}
      }}%
{\end{list}\endgroup}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Index %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@restonecol
\def\theindex{\@mainmatterfalse
  \@restonecoltrue\if@twocolumn\@restonecolfalse\fi
  \begingroup\parindent \z@
  \addcontentsline{toc}{section}{Index}
  \columnseprule \z@
  \columnsep 1pc\section*{\indexname} %Subject or Author here
  \parskip\z@ plus .3\p@\relax\let\item\idxitem\fontsize{8\p@}{10\p@}\selectfont}
\def\idxitem{\par\raggedright\hangindent 3em}
\def\subitem{\par\penalty1000\raggedright\hangindent 3em\hspace*{1em}}
\def\subsubitem{\par\penalty1000\raggedright\hangindent 3em\hspace*{2em}}
\def\endtheindex{\if@restonecol\endgroup\onecolumn\else\clearpage\fi}
\def\indexspace{\par \vskip 18\p@ plus 12\p@ minus 12\p@\relax}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%% Appendix %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\ifappend % Are we in the Appendix?
\def\appendix{\par
  \renewcommand{\@seccntformat}[1]{{\csname
  the##1\endcsname}\quad}
        \appendtrue}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Override settings in MathTime back to TeX defaults
\DeclareMathSizes{5}{5}{5}{5}
\DeclareMathSizes{6}{6}{5}{5}
\DeclareMathSizes{7}{7}{5}{5}
\DeclareMathSizes{8}{8}{5.33}{5}
\DeclareMathSizes{9}{9}{7}{5}
\DeclareMathSizes{9.25}{9.25}{6.1}{5}
\DeclareMathSizes{10}{10}{6.5}{5}
\DeclareMathSizes{11}{11}{7.7}{6}
\DeclareMathSizes{12}{12}{9}{7}

%Math parameters
\setlength{\jot}{5\p@}
\skip\@mpfootins = \skip\footins
\fboxsep=6\p@
\fboxrule=.25\p@
\@mathmargin1em
\medmuskip=4mu% plus 2mu minus 4mu
\thickmuskip=5mu% plus 5mu

\vbadness=9999
\tolerance=9999
\doublehyphendemerits=10000
\doublehyphendemerits 640000
\finalhyphendemerits  1000000

\flushbottom
\frenchspacing
\onecolumn
\pagestyle{headings}

% Author queries
\fboxsep=4\p@
\fboxrule=0.5\p@

\def\notmargs{%
   \partopsep     \z@
   \itemsep       3pt
   \parsep        \z@
   \rightmargin   \z@
   \labelsep      28pt
   \listparindent \parindent
   \itemindent    \z@}


\def\nomenclature{\section*{Nomenclature}\raggedright%
    \@ifnextchar[{\@notnumerate}{\@notnumerate[]}}


\def\@notnumerate[#1]{%
     \ifnum \@enumdepth >3 \@toodeep\else
     \advance\@enumdepth \@ne
     \edef\@enumctr{enum\romannumeral\the\@enumdepth}
     \list{\csname label\@enumctr\endcsname}{%
       \notmargs
       \setlength{\leftmargin}{\csname leftmargin\romannumeral\the\@listdepth\endcsname}
       \usecounter{\@enumctr}
       \settowidth\labelwidth{#1}
       \addtolength{\leftmargin}{\labelwidth}
       \addtolength{\leftmargin}{\labelsep}
       \def\makelabel##1{\llap\hss{##1}}}%
     \fi
   }

\ifnoquery
\newcommand{\query}[2][0pt]{%
  \marginpar{%\vspace*{#1}%
    {\parbox{\marginparwidth}{%
     \raggedright\small{}}}}}
\else
\newcommand{\query}[2][0pt]{%
  \marginpar{%\vspace*{#1}%
    {\parbox{\marginparwidth}{%
     \raggedright\small{\bf #2}}}}}%
\fi

\newdimen\tabqueryskip\tabqueryskip\textwidth
\def\figquery#1{\ifnoquery\else\hbox to 0pt{\hskip-8pc\fontsize{9}{11}\selectfont\textbf{\hsize2pc #1}}\fi}
\def\tabquery#1{\ifnoquery\else\hbox to 0pt{\hskip-7.5pc\advance\tabqueryskip-\tempdime\hskip-.5\tabqueryskip\fontsize{9}{11}\selectfont\textbf{\hsize2pc #1}}\fi}


\newbox\querybox%

\newenvironment{queries}[1][Q1]{\clearpage\onecolumn%
  \global\setbox\querybox=\vbox\bgroup\global\qrytrue%
  \begingroup%
  \thispagestyle{queryheadings}
  \advance\@enumdepth \@ne
  \edef\@enumctr{enum\romannumeral\the\@enumdepth}
  \def\labelenumi{\arabic{enumi})}
  \def\labelenumii{\alph{enumii})}
  \begin{list}{\csname label\@enumctr\endcsname}{%\small%
      \setlength{\topsep}{12\p@}%
    \setlength{\itemsep}{6\p@}%
      \setlength{\leftmargin}{\z@}%
      \settowidth{\labelwidth}{\bfseries#1}%
      \setlength{\labelsep}{1.5em}%
      \addtolength{\leftmargin}{\labelwidth}%
      \addtolength{\leftmargin}{\labelsep}
      \def\makelabel##1{\hss\llap{{##1}}}
    }}{\end{list}\endgroup\egroup}

% Short-form coding
\newcommand\tetal{{{\rm et~al.}}}
\newcommand\etal{\textit{et~al.}}
\newcommand\eg{\textit{e.g.}\ }
\newcommand\ie{\textrm{i.e.}\ }
\let\endash\textendash
\def\dd{{\rm d}}
\def\ee{{\rm e}}
\def\cir#1{{\accent"17 #1}}

\chardef\permil="89%

%%%%%%%%%%%%%%%%%%%%%%%%%%

\DeclareSymbolFont{EulerExtension}{U}{euex}{m}{n}
\DeclareMathSymbol{\intop}{\mathop}{EulerExtension}{"52}
\DeclareMathSymbol{\ointop}{\mathop}{EulerExtension}{"48}

%%%%%%%%%%%%%%%
\def\dbond{\raise0.18ex\hbox{$=$}}
\def\bond{\raise0.18ex\hbox{$-$}}

\def\sdot#1{{\buildrel{\scriptscriptstyle\bullet}\over{\hbox{#1}}}}

\def\refmsg{\noindent\hangindent=1em}%

\def\z#1{\phantom{#1}}

%%%For New Table

\newcount\mscount
\def\multispan#1{\omit \mscount#1\relax
  \loop\ifnum\mscount>\@ne \sp@n\repeat}
\def\sp@n{\span\omit\advance\mscount\m@ne}

\hyphenation{Table}
\hyphenation{Figure}
\hyphenation{Section}
\hyphenation{equation}
\hyphenation{Theorem}
\hyphenation{Lemma}
\hyphenation{Algorithm}
\hyphenation{Definition}
\hyphenation{Corollary}
\hyphenation{Proof}
\hyphenation{Remark}

\def\bcontinued{({\it continued\/})}
\def\tcontinued{Continued}

\newenvironment{tabenumerate}[1][10pc]{
\begin{minipage}[t]{#1}
\begin{enumerate}
}{\end{enumerate}
\end{minipage}}

\newenvironment{tabitemize}[1][10pc]{
\begin{minipage}[t]{#1}
\begin{itemize}
}{\end{itemize}
\end{minipage}}

\newcounter{qauth}%
\setcounter{qauth}{0}%
\def\theqauth{\arabic{qauth}}%

\newcounter{tempqauth}%
\setcounter{tempqauth}{1}%
\def\thetempqauth{\arabic{tempqauth}}%

\def\au#1{#1\refstepcounter{qauth}\expandafter\gdef\csname qau\theqauth\endcsname{#1}}%
\def\add#1#2{$^{\it #1}$#2\par}
\def\email#1{\affcorr\ E-mail: #1}

\long\def\onecoleqn#1{\begin{figure}[!b]\par\llap{\hbox to 267pt{\begin{minipage}{\textwidth}%
\vrule height.5pt width\textwidth%
#1%
\end{minipage}}}\par\end{figure}}

\long\def\twocoleqn#1{\begin{figure}[!b]\par\rlap{\hbox to \textwidth{\begin{minipage}{\textwidth}%
\vrule height.5pt width\textwidth%
#1%
\end{minipage}}}\par\end{figure}}

\long\def\onetwoeqn#1{\begin{figure}[!b]\par\llap{\hbox to 267pt{\begin{minipage}{\textwidth}%
#1%
\end{minipage}}}\par\end{figure}}

\long\def\twooneeqn#1{\begin{figure}[!b]\par\rlap{\hbox to \textwidth{\begin{minipage}{\textwidth}%
#1%
\end{minipage}}}\par\end{figure}}

\ifweb
\usepackage{hypernat}
\usepackage[dvips,breaklinks,raiselinks,bookmarksnumbered=true]{hyperref}
\hypersetup{%
    colorlinks,%
    citecolor=blue,%
    filecolor=blue,%
    linkcolor=blue,%
    urlcolor=blue,
}%

\usepackage{color}

\fi

\ifprinter
\graphicspath{{../Pagination/Art/}}
\else
\iffproof
\graphicspath{{../Pagination/Art/}}
\else
\graphicspath{{../Pagination/Art/Webfiles/}{../Pagination/Art/}}
\fi
\fi

\CYear{2015}
\Year{2015}

\def\correnvelope{\includegraphics{IET_email_icon.eps}}%

\def\corr{\ \text{\correnvelope}}

\def\affcorrenvelope{\includegraphics[width=2mm]{IET_email_icon.eps}}%

\def\affcorr{\text{\affcorrenvelope}}

\usepackage[hypcap]{caption}

\endinput

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{labor}
\LoadClass[14pt]{extarticle}

% detect pdf output
\newif\ifpdf 
\ifx\pdfoutput\undefined 
   \pdffalse % we are not running PDFLaTeX 
\else 
   \pdfoutput=1 % we are running PDFLaTeX 
   \pdftrue 
\fi

\ifpdf 
    \RequirePackage[pdftex]{graphicx} 
    \RequirePackage[a4paper,pdftex,unicode,colorlinks=true]{hyperref}
    \pdfcompresslevel=9 
\else 
    \RequirePackage{graphicx} 
    \RequirePackage[a4paper,unicode,colorlinks=true]{hyperref}
\fi

\newcommand{\insertgraph}[3][]{%
\ifpdf%
  \includegraphics[#1]{#3}%
\else%
  \includegraphics[#1]{#2}%
\fi%
}

\usepackage{mathtext}
\RequirePackage[a4paper,hmargin={2cm,2cm},vmargin={2cm,2cm},nohead]{geometry}
\RequirePackage[T2A]{fontenc}
\RequirePackage[koi8-r]{inputenc}
\RequirePackage[russian]{babel}
\RequirePackage{enumerate,calc,ifthen,realcalc}
\RequirePackage{indentfirst,amsmath,citehack,floatflt,longtable,wrapfig}

%\usepackage{type1cm}
%\RequirePackage{pscyr}
%\renewcommand{\rmdefault}{ftm} 
%\renewcommand{\ttdefault}{fer} 
%\renewcommand{\sfdefault}{far} 

% �����������
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L,C,R]{}
\fancyfoot[LE,RO]{\thepage{}}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\parsep 0pt plus 1pt
\itemsep 0pt plus 1pt

% ���������� �������� ��� ���������� ���������
\usepackage{caption2}
%\captionstyle{indent}%
\renewcommand\captionfont{\normalsize}%
%\setcaptionmargin{\leftmargin}
%\setlength\captionindent{\parindent}
\renewcommand\captionlabeldelim{.}
\onelinecaptionstrue


\renewcommand{\topfraction}{.9}
\renewcommand{\textfraction}{.1}
\renewcommand{\bottomfraction}{.9}
%\renewcommand{\floatpagefraction}{.9}
%\renewcommand{\dblfloatpagefraction}{\floatpagefraction}
\setcounter{topnumber}{4}
\setcounter{bottomnumber}{4}
\setcounter{totalnumber}{4}
\setlength{\floatsep}{8pt plus 2pt minus 2pt}
\setlength{\textfloatsep}{8pt plus 2pt minus 2pt}
\setlength{\intextsep}{12pt plus 2pt minus 2pt}

\newcommand{\wheref}[1]{\noindent{}��� #1~--\ }
\newcommand{\wheren}[1]{#1~--\ }

% �������� �� ���������
\newcommand{\MakeDekanTitle}[0]{\flushright{}\parbox[t]{6.7cm}{���������\\[3mm]����� ���, ����.,  �.�.�.�.\\[3mm]\rule{3.5cm}{0.5pt} ����� �.�.
}}
\newcommand{\MakeLabYear}[0]{2001}
\newcommand{\MakeLabSpeciality}[0]{010800 ���}
\newcommand{\MakeLabTitle}[0]{}
\newcommand{\MakeLabTirag}[0]{10}
\newcommand{\MakeLabOrder}[0]{\qquad\qquad{}}
\newcommand{\MakeUDK}[0]{��� 621.384.8}
\newcommand{\MakeLabAuthor}[0]{\noindent{}�����������: }
\newcommand{\MakeChairDate}[0]{}
\newcommand{\MakeDiscipline}[0]{}

% ��������� ����������
\newcommand{\SetLabTitle}[1]{\renewcommand{\MakeLabTitle}[0]{#1}}
\newcommand{\SetLabSpec}[1]{\renewcommand{\MakeLabSpeciality}[0]{#1}}
\newcommand{\SetUDK}[1]{\renewcommand{\MakeUDK}[0]{��� #1}}

\newcommand{\SetLabAuthor}[2][1]{\renewcommand{\MakeLabAuthor}[0]{\noindent{}%
\ifthenelse{\equal{#1}{1}}{�����������: }{�����������: }\parbox[t]{14cm}{#2}}}

\newcommand{\SetChairDate}[1]{\renewcommand{\MakeChairDate}[0]{#1}}
\newcommand{\SetDiscipline}[1]{\renewcommand{\MakeDiscipline}[0]{#1}}
\newcommand{\SetLabTirag}[1]{\renewcommand{\MakeLabTirag}[0]{#1}}
\newcommand{\SetLabOrder}[1]{\renewcommand{\MakeLabOrder}[0]{#1}}
\newcommand{\SetLabYear}[1]{\renewcommand{\MakeLabYear}[0]{#1}}

% ���������� ������ ���� ������� ���������
\newcommand{\MakeLabTitlePage}[0]{
{
\thispagestyle{empty}
% ����� ���������
\begin{center}%
������������ ����������� ���������� ���������\\[2mm]%
������� ��������������� �����������
\end{center}

\vspace{2cm}

\MakeDekanTitle{}

\vspace{2.5cm}

\begin{center}
{\large\MakeLabTitle{}}

\vspace{10pt}

\parbox{\linewidth-3cm}{������������ �������� �� ���������� ������������ ������ �� ���������� %
``\MakeDiscipline{}'' ��� ��������� ������������� \MakeLabSpeciality{}}
\end{center}

\vfill{}
\begin{center}
  �����-\MakeLabYear{}
\end{center}
}
\clearpage{}
{
\thispagestyle{empty}
\noindent{}\MakeUDK{}

\noindent{}\MakeLabTitle{}. // ������������ �������� �� ����������
������������ ������ �� ���������� ``\MakeDiscipline{}'' ��� ���������
������������� \MakeLabSpeciality{}.~--- �����: ���. ���, \MakeLabYear{}.~--
\pageref{TheLastPageOfMethod}~c.


\vspace{1cm}

\MakeLabAuthor

\vspace{3cm}

\noindent{}������������ �������� ����������� � ������������� � �������
������������ ��������� ������� �� ��� �� \MakeChairDate{}

\vspace{2cm}

\noindent{}���. ��������, ����., �. �.-�.�.\hfill{}�.�.~������

\vspace{5cm}

\noindent{}�������� ������������ ��������� ���,\\%
������������ ������������ ��������\\[2mm]%
���., ����. ����. ����  \hfill{}�.�.~��������\\[4mm]%
\rule{0pt}{0pt}\hfill{}``\rule{1cm}{0.5pt}''\rule{3cm}{0.5pt} \MakeLabYear{}~�.
}
\clearpage{}
}


\AtBeginDocument{%
\selectlanguage{russian}%
\frenchspacing
\righthyphenmin=2
\sloppy
\MakeLabTitlePage
}

\AtEndDocument{%
\rule{0pt}{1pt}

\cleardoublepage{}
\label{TheLastPageOfMethod}
\tableofcontents{}

\newcounter{MyPages}
\setcounter{MyPages}{\value{page}-\value{page}/4*4}
%\theMyPages{}

\ifthenelse{\value{MyPages} = 0}{\clearpage{}\rule{0pt}{10pt}\clearpage{}\rule{0pt}{10pt}\clearpage{}\rule{0pt}{10pt}}{}
\ifthenelse{\value{MyPages} = 1}{\clearpage{}\rule{0pt}{10pt}\clearpage{}\rule{0pt}{10pt}}{}
\ifthenelse{\value{MyPages} = 2}{\clearpage{}\rule{0pt}{10pt}}{}

\clearpage{}
\thispagestyle{empty}
\noindent{}{\large{}\MakeLabTitle{}}

\rule{0pt}{0.5cm}

\noindent{}������������ �������� �� ���������� ������������ ������ �� ���������� %
``\MakeDiscipline{}'' ��� ��������� ������������� \MakeLabSpeciality{}

\rule{0pt}{0.5cm}

\MakeLabAuthor{}

\vfill{}
\Rmul\UchList{\thepage{}}{0.053}
\Rtrunc\UchLst2\UchList

\Rmul\UslList{\thepage{}}{0.058}
\Rtrunc\UslLst2\UslList

\noindent{}��������� � ������\\
������ 60x84/16. ������ ������ \No{}~2.\\
������� ������. ���. ���. �.~\UslLst. ��.-���.�.~\UchLst\\
����� \MakeLabTirag{}~���. ����� \MakeLabOrder{}. ���� �.\\
��� ���, �������� �� \No{}1 �� 18.07.94.\\
���������� ���. 634034, �����, ��. ������, 30.
}

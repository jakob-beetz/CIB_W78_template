%=================================================================================================================================
%  __    _   ___       _      ____  ___       ___    __    ___   ____  ___      _____  ____  _      ___   _      __   _____  ____ 
% / /`  | | | |_)     \ \    / / / ( (_)     | |_)  / /\  | |_) | |_  | |_)      | |  | |_  | |\/| | |_) | |    / /\   | |  | |_  
% \_\_, |_| |_|_)      \_\/\/ /_/  (_(_)     |_|   /_/--\ |_|   |_|__ |_| \      |_|  |_|__ |_|  | |_|   |_|__ /_/--\  |_|  |_|__ 
%=================================================================================================================================

\documentclass[a4paper, 12pt]{article}
%=========================================================
%                       Packages
%=========================================================

\usepackage[top=2cm, bottom=2.5cm, right=3cm, left=3cm]{geometry}
\usepackage{fancyhdr} % For footer customization
\usepackage{titlesec} % For section formatting
\usepackage[style=apa, backend=biber]{biblatex} % For APA 7th edition citations
% \usepackage[pdftex,
%             pdfauthor={Your Name},
%             pdftitle={The Title},
%             pdfsubject={The Subject},
%             pdfkeywords={Some Keywords},
%             pdfproducer={Latex with hyperref, or other system},
%             pdfcreator={pdflatex, or other tool}]{hyperref}
\usepackage[pdfusetitle]{hyperref}
\usepackage{graphicx} % For figures
\usepackage{caption} % For figure captions
\usepackage{listings} % For code listings
\usepackage{authblk}
\usepackage{lipsum} 
\usepackage{booktabs}
\usepackage{listings}
\usepackage{xcolor} % Optional: For customizing colors if desired
\usepackage{titling} 
\usepackage{array} % Required for manipulating table columns


\usepackage{apalike}
\DefineBibliographyStrings{english}{%
urlseen = {Retrieved},
}
\renewcommand{\figurename}{Figure} 

%=========================================================
%                       Typopgraphy 
%=========================================================
\usepackage{roboto} % Roboto for headers
\usepackage{libertine} % Linux Libertine O for body text
\usepackage{sourcecodepro}

% Section Heading Formatting
\setcounter{secnumdepth}{3} % Numbering up to 3 levels
\titlespacing{\section}{0pt}{*1.8}{*0} 
\titlespacing{\subsection}{0pt}{*1.8}{*0} 
\titlespacing{\subsubsection}{0pt}{*1.8}{*0} 
\setlength{\parindent}{0pt}
% {left margin}{before spacing}{after spacing}
\titleformat{\section}{\normalfont\bfseries\roboto}{\thesection.}{0.1em}{}
\titleformat{\subsection}{\normalfont\roboto}{\thesubsection.}{0.1em}{}
\titleformat{\subsubsection}{\normalfont\roboto}{\thesubsubsection.}{0.1em}{}
\captionsetup{labelfont=bf} 
\renewcommand{\captionfont}{\small\roboto\ }
\renewcommand{\footnotesize}{\fontsize{7}{9}\selectfont} % Smaller footnote text


%=========================================================
%                       Colors 
%=========================================================
%CIB International colors, picked from website 
\definecolor{cib-darkgreen}{HTML}{1B7F00}
\definecolor{cib-midgreen}{HTML}{11A646}
\definecolor{cib-lightgreen}{HTML}{13B24B}

% Gruvbox Light Colors (approximate)
\definecolor{gruvbox-bg}{HTML}{F9F5D7}   % Background
\definecolor{gruvbox-fg}{HTML}{3C3836}   % Main foreground
\definecolor{gruvbox-red}{HTML}{CC241D}
\definecolor{gruvbox-green}{HTML}{98971A}
\definecolor{gruvbox-yellow}{HTML}{D79921}
\definecolor{gruvbox-blue}{HTML}{458588}
\definecolor{gruvbox-purple}{HTML}{B16286}
\definecolor{gruvbox-aqua}{HTML}{689D6A}
\definecolor{gruvbox-orange}{HTML}{D65D0E}

\definecolor{stringc}{rgb}{0.5, 0.1, 0.8}


%=========================================================
%                       Header and footer 
%=========================================================
% Footer Configuration
\pagestyle{fancy}
\fancyhf{} 
\fancyhead[R]{\scriptsize\roboto\authorname \ \bfseries\shorttitle} 
% \fancyhead[R]{\footnotesize\roboto \bfseries\titlecase{\thetitle}} % Small title, centered in the header
\fancyfoot[R]{\scriptsize\roboto CIB W78 conference 2024, Marakesh, Morrocco} % Centered page number in the footer 


%=========================================================
%                       Author info
%=========================================================
\newcommand{\authorinfo}[3]{
  \noindent#1,  (\href{mailto:#2}{#2}) \\
  \noindent\textit{#3} \\
   \\
    }


%=========================================================
%                       Title
%=========================================================
\makeatletter 
\renewcommand{\maketitle}{ 
    \begin{flushleft}
        \hlinethick \\ 
        \vspace{0.2cm} 
        \bfseries\roboto\Large\@title \\
       
        \hlinethick 
    \end{flushleft}
}
\makeatother 


%=========================================================
%                       abstract and keywords 
%=========================================================
\renewenvironment{abstract}
               {\noindent\textbf{\roboto Abstract}\noindent\par} 
               {\noindent\par}

% Keywords setup
\newcommand{\keywords}[1]{\noindent{\bfseries\roboto Keywords:} \normalfont#1\par\medskip}


%=========================================================
%                       Listings 
%=========================================================
\lstset{
    basicstyle=\ttfamily\fontsize{9pt}{10pt}\selectfont\color{gruvbox-fg}, % Use DejaVu Sans Mono, adjust size  
    numbers=left,              % Display line numbers on the left
    numberstyle=\tiny\color{gray}, % Line number style
    numbersep=5pt,             % Space between numbers and code
    breaklines=true,           % Automatic line breaking for long lines
    breakatwhitespace=true,    % Breaks can occur at whitespace
    tabsize=3,                 % Number of spaces per tab
    backgroundcolor=\color{white}, % Optional: set background color 
    language=Python,
    keywordstyle=\bfseries\color{gruvbox-blue},
   stringstyle=\bfseries\color{gruvbox-orange},
    commentstyle=\color{gray}
}

\hypersetup{
    colorlinks = true,       % Color text of links instead of boxes
    urlcolor   = cib-darkgreen,       % Set color to blue
    linkcolor  = cib-darkgreen,        % Color of internal links (within the document)
    citecolor = cib-darkgreen
}


%=========================================================
%                       Tables 
%=========================================================
\newcommand{\hlinethick}{\rule{\linewidth}{0.2pt}}  % Ensure this is present

\renewcommand{\headrulewidth}{0pt} % No line above the footer
\fancypagestyle{plain}{
    \fancyhf{} 
    \renewcommand{\headrulewidth}{0pt} 
}

\renewcommand{\arraystretch}{1.25} % Increase the height of table rows
\newcommand{\tablefont}{\roboto} 
\newcolumntype{R}[1]{>{\raggedleft\arraybackslash}p{#1}} % Define a new right-aligned paragraph column type
\newcolumntype{L}[1]{>{\raggedright\arraybackslash}p{#1}} % Define a new left-aligned (no justification) paragraph column type
\newcolumntype{C}[1]{>{\centering\arraybackslash}p{#1}} % Define a new centered paragraph column type
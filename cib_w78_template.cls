\documentclass[a4paper, 12pt]{article}

% Packages
% \usepackage{geometry} % For page margins
\usepackage[top=2cm, bottom=2.5cm, right=3cm, left=3cm]{geometry}
\usepackage{fancyhdr} % For footer customization
\usepackage{titlesec} % For section formatting
\usepackage[style=apa, backend=biber]{biblatex} % For APA 7th edition citations
\usepackage{hyperref}
\usepackage{graphicx} % For figures
\usepackage{caption} % For figure captions
\usepackage{listings} % For code listings
\usepackage{authblk}
\usepackage{lipsum} 

% Fonts 
\usepackage{roboto} % Roboto for headers
\usepackage{libertine} % Linux Libertine O for body text
\renewcommand{\footnotesize}{\fontsize{7}{9}\selectfont} % Smaller footnote text

% Footer Configuration
\pagestyle{fancy}
\fancyhf{} 
\fancyhead[R]{\scriptsize\roboto\authorname \ \bfseries\shorttitle} 
% \fancyhead[R]{\footnotesize\roboto \bfseries\titlecase{\thetitle}} % Small title, centered in the header
\fancyfoot[R]{\scriptsize\roboto CIB W78 conference 2024, Marakesh, Morrocco} % Centered page number in the footer 






\usepackage{titling} 


% Section Heading Formatting
\setcounter{secnumdepth}{3} % Numbering up to 3 levels
\titlespacing{\section}{0pt}{*1.8}{*0} 
\setlength{\parindent}{0pt}
% {left margin}{before spacing}{after spacing}
\titleformat{\section}{\normalfont\bfseries\roboto}{\thesection.}{0.1em}{}
\titleformat{\subsection}{\normalfont\roboto}{\thesubsection.}{0.1em}{}
\titleformat{\subsubsection}{\normalfont\roboto}{\thesubsubsection.}{0.1em}{}

\captionsetup{labelfont=bf, font={small}} 
% Title Configuration

\newcommand{\hlinethick}{\rule{\linewidth}{0.2pt}}  % Ensure this is present
% Author formatting rule
% ... [Your existing template code]


\renewcommand{\headrulewidth}{0pt} % No line above the footer
\fancypagestyle{plain}{
    \fancyhf{} 
    \renewcommand{\headrulewidth}{0pt} 
}


\newcommand{\authorinfo}[3]{
  \noindent#1,  (\href{mailto:#2}{#2}) \\
  \noindent\textit{#3} \\
   \\
    }




\makeatletter 
\vspace{-4cm} % Adjust the negative value as needed
\renewcommand{\maketitle}{ 
    \begin{center}
    
        \hlinethick \\ 
        \vspace{0.3cm} 
        \bfseries\roboto\Large\@title 
        \vspace{0.3cm} \\ 
        \hlinethick \\ 

    \end{center}

}
\makeatother 





\date{}

\renewenvironment{abstract}
               {\noindent\textbf{\roboto Abstract}\noindent\par} 
               {\noindent\par}

% Keywords setup
\newcommand{\keywords}[1]{\noindent{\bfseries\roboto Keywords:} \normalfont#1\par\medskip}









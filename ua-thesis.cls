%%
%% This is file `ua-thesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% ua-classes.dtx  (with options: `ua-thesis')
%%
%%
%% File ua-classes.dtx by Marcel Oliver
%%
%% Documentation can be obtained by running "latex labels.dtx"
%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ua-thesis}
              [1997/03/08 UA Thesis Class]
\newif\iffinal@
\DeclareOption{final}{%
  \final@true
  \PassOptionsToClass{final}{report}}
\DeclareOption{draft}{%
  \final@false
  \PassOptionsToClass{draft}{report}}
\ExecuteOptions{draft}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\LoadClass[12pt]{report}
\RequirePackage[reqno]{amsmath}[1996/10/24]
\RequirePackage{amsfonts}[1996/10/24]
\RequirePackage{amsthm}[1996/10/24]
\RequirePackage{ua-title}
\def\contentsname{Table of Contents}
\def\bibname{References}
\def\dedicationname{Dedication}
%\def\listfigurename{List of Figures}
%\def\listtablename{List of Tables}
\topmargin      0in
\headheight     \baselineskip
\headsep        0.6in
\addtolength{\headsep}{-\headheight}
\footskip       0in
\textheight     \paperheight
\addtolength{\textheight}{-2.7in}
\oddsidemargin  0.3in
\evensidemargin 0.3in
\marginparwidth 0in
\marginparsep   0in
\textwidth      \paperwidth
\addtolength{\textwidth}{-2.5in}
\def\singlespaced{\baselineskip=\normalbaselineskip}
\def\doublespaced{\iffinal@ \baselineskip=1.5\normalbaselineskip \fi}
\newlength{\@topskipsave}
\@topskipsave\topskip
\def\ps@topright{%
    \let\@mkboth\@gobbletwo
    \topskip\@topskipsave
    \def\@oddhead{\normalfont\hfil\thepage}
    \let\@evenhead\@oddhead
    \def\@evenfoot{}
    \def\@oddfoot{}}
\def\ps@continued{%
    \let\@mkboth\@gobbletwo
    \topskip 0.5in
    \def\@oddhead{\raisebox{-0.5in}{\@continued}%
                  \hfil\normalfont\thepage}
    \let\@evenhead\@oddhead
    \def\@evenfoot{}
    \def\@oddfoot{}}
\def\@notopskip{\topskip\z@ \hrule height\z@}
\def\maketitle{%
  \cleardoublepage
  \begingroup
    \@SetTitlePage
    \iffinal@
      \@SetApprovalForm
      \@SetAuthorStatement
    \fi
  \endgroup
  \let\maketitle\relax}
\def\@SetApprovalForm{%
  \pagestyle{topright}
  \@notopskip
  \vspace*{\fill}
  \begin{center}
    %\large
    THE UNIVERSITY OF ARIZONA \\
    GRADUATE COLLEGE
  \end{center}
  As members of the Dissertation Committee, we certify that we have read the dissertation prepared by Alfred Grant Schissler entitled ``Contributions to gene set analysis of correlated, paired-sample transcriptome data to enable precision medicine'' and recommend that it be accepted as fulfilling the dissertation requirement for the Degree of Doctor of Philosophy.
  \vspace*{0.3in} \\
  %
  %\scshape
  % \underline{\makebox[4.2in][r]{}} Date: \today \\
  \underline{\makebox[4.2in][r]{}} Date: February 16, 2017 \\
  Walter W. Piegorsch
  \vspace*{0.2in} \\
  %
  %\underline{\makebox[4.2in][r]{}} Date: \today \\
    \underline{\makebox[4.2in][r]{}} Date: February 16, 2017 \\
  Yves A. Lussier
  \vspace*{0.2in} \\
  %
  %\underline{\makebox[4.2in][r]{}} Date: \today \\
    \underline{\makebox[4.2in][r]{}} Date: February 16, 2017 \\
  Ryan Gutenkunst
  \vspace*{0.2in} \\
  %
  %\underline{\makebox[4.2in][r]{}} Date: \today \\
  \underline{\makebox[4.2in][r]{}} Date: February 16, 2017 \\
  Joseph C. Watkins
  \vspace*{0.2in} \\
  %
  Final approval and acceptance of this dissertation is contingent upon
  the candidate's submission of the final copies of the dissertation
  to the Graduate College. \\
  I hereby certify that I have read this dissertation prepared under my
  direction and recommend that it be accepted as fulfilling the dissertation
  requirement.
  \vspace*{0.2in} \\
  %\scshape
  %\underline{\makebox[4.2in][r]{}} Date: \today \\
  \underline{\makebox[4.2in][r]{}} Date: February 16, 2017 \\
  Dissertation Director: Walter W. Piegorsch \\
  %
  \vspace*{\fill}
  \vspace*{0.5in}
  \newpage}
\def\@SetAuthorStatement{%
   \begingroup
     \pagestyle{topright}
     \@notopskip
     \vspace*{1in}
     \begingroup
       \centering\large\scshape
       Statement by Author \\
     \endgroup
     \bigskip\bigskip
     \par
     This \MakeLowercase{\@thesis} has been submitted in partial
     fulfillment of requirements for an advanced degree at The
     University of Arizona and is deposited in the University
     Library to be made available to borrowers under rules
     of the Library.
     \bigskip
     \par
     Appendices within this \MakeLowercase{\@thesis} contain copyrighted materials. Unless forbidden by the rights retained by the publisher, brief quotations from this \MakeLowercase{\@thesis} are
     allowable without special permission, provided that accurate
     acknowledgment of source is made. Requests for permission for
     extended quotation from or reproduction of this manuscript in
     whole or in part may be granted by the
     \ifx\@empty\@copyright
       head of the major department or the Dean of the Graduate
       College when in his or her judgment the proposed use of
       the material is in the interests of scholarship.
       In all other instances, however,
       permission must be obtained from the author and/or copyright holder.
     \else
       copyright holder.
     \fi
     \par
     \vspace*{3\baselineskip}
     \begin{flushright}
       \scshape
       Signed:
       \underline{\makebox[0.2in][r]{}
       Alfred Grant Schissler
       \makebox[0.2in][r]{}}
     \end{flushright}
     \vspace*{\fill}
     \ifx\@empty\@directortitle
     \else
       \begingroup
          \centering
          \large\scshape
          Approval by \@thesis\ Director
       \endgroup
       \bigskip\bigskip\par
       This \MakeLowercase{\@thesis} has been approved
       on the date shown below:
       \vspace*{3\baselineskip}\par\noindent
       \begin{minipage}[t]{0.45\textwidth}
         \begin{center}
           \underline{\makebox[\textwidth][r]{}} \\
           \@director \\
           \@directortitle
         \end{center}
       \end{minipage}%
       \hfill%
       \begin{minipage}[t]{0.45\textwidth}
         \begin{center}
           \underline{\makebox[\textwidth][r]{}} \\
           Date
         \end{center}
       \end{minipage}
     \fi
     \vspace*{0.5in}
     \newpage
   \endgroup}
\long\def\Addto@envbody#1{\@envbody\@xp{\the\@envbody#1}}
\def\Collect@body#1{%
    \@envbody{}%
    \def\process@envbody{%
        \@xp#1\@xp{\the\@envbody}%
    }%
    \@xp\let\csname\@currenvir\endcsname\Collect@@body
    \csname\@currenvir\endcsname
}
\long\def\Collect@@body#1\end#2{%
    \def\@tempa{#2}%
    \ifx\@tempa\@currenvir
        \Addto@envbody{#1}%
        \@xp\edef\csname\@currenvir\endcsname{%
            \@nx\process@envbody\@nx\end{\@tempa}%
            }%
    \else
        \Addto@envbody{#1\end{#2}}%
    \fi
    \csname\@currenvir\endcsname
}
\renewenvironment{abstract}{%
  \Collect@body\@SetAbstract}{}
\long\def\@SetAbstract#1{%
  \chapter*{Abstract}
  \begingroup
    \thispagestyle{topright}
    \@notopskip
    \bigskip\bigskip
    #1
  \endgroup
  }
\def\chapter{%
  \clearpage
  \global\@topnum\z@
  \@afterindentfalse
  \secdef\@chapter\@chapterstar}
\def\@chapter[#1]#2{%
  \pagestyle{topright}
  \refstepcounter{chapter}%
  \typeout{\@chapapp \space \thechapter}
  \addcontentsline{toc}{chapter}%
    {\protect\chapterline{\@chapapp\ \thechapter}#1}
  %\addtocontents{lof}{\protect\addvspace{\medskipamount}}
  %\addtocontents{lot}{\protect\addvspace{\medskipamount}}
  \begingroup
    \@notopskip
    \centering
    \vspace*{0.25in}
    \textsc{\@chapapp\ \thechapter} \\
    \medskip
    \Large\textsc{#2} \par
  \endgroup
  \vspace*{2\normalbaselineskip}
  \@afterheading
  \doublespaced}
\def\@chapterstar#1{%
  \typeout{#1}
  \edef\1{#1}
  \ifx \dedicationname\1
       \doublespaced
  \else
  \ifx \contentsname\1
       \@specialhead\1
       \singlespaced
       \let\tableofcontents\relax
  \else
  \ifx \listfigurename\1
       \@specialhead\1
       \@tocentry\1
       \singlespaced
  \else
  \ifx \listtablename\1
       \@specialhead\1
       \@tocentry\1
       \singlespaced
  \else
  \pagestyle{topright}
  \ifx \tableofcontents\relax
       \@tocentry\1
       \ifx \bibname\1 \singlespaced \else \doublespaced \fi
  \fi\fi\fi\fi\fi
  \begingroup
    \@notopskip
    \centering
    \Large\textsc{#1} \par
  \endgroup
  \vspace*{2\normalbaselineskip}
  \@afterheading}
\def\@tocentry#1{%
  \addcontentsline{toc}{chapter}{#1}
  %\addtocontents{lof}{\protect\addvspace{\medskipamount}}
  %\addtocontents{lof}{\protect\addvspace{\medskipamount}}
}
%% remove list of tables and list of figures
\renewcommand\listoffigures{%
        \@starttoc{lof}%
      }
      \renewcommand\listoftables{%
        \@starttoc{lot}%
}
\def\@specialhead#1{%
  \gdef\@continued{\normalsize\scshape#1---\slshape Continued}
  \pagestyle{continued}
  \thispagestyle{topright}}
\def\section{\@startsection{section}{1}%
  \z@{-1\baselineskip\@plus-.75\baselineskip}{.5\baselineskip}%
  {\large\bfseries}}
\def\subsection{\@startsection{subsection}{2}%
  \z@{-.75\baselineskip\@plus-.5\baselineskip}{.5\baselineskip}%
  {\normalfont\bfseries}}
\def\subsubsection{\@startsection{subsubsection}{3}%
   \z@{.5\baselineskip\@plus.5\baselineskip}{-5\p@}%
   {\normalfont\itshape}}
\def\th@plain{%
  \let\thm@indent\noindent
  \thm@headfont{\bfseries}% heading font bold
  \thm@notefont{\mdseries\upshape}
  \thm@preskip.5\baselineskip\@plus.2\baselineskip
                                    \@minus.2\baselineskip
  \thm@postskip\thm@preskip
  \itshape
}
\def\th@remark{%
  \let\thm@indent\noindent
  \thm@headfont{\bfseries}% heading font bold
  \thm@notefont{\mdseries\upshape}%
  \thm@preskip.5\baselineskip\@plus.2\baselineskip
                                    \@minus.2\baselineskip
  \thm@postskip\thm@preskip
  \upshape
}
\def\th@definition{%
  \let\thm@indent\noindent
  \thm@headfont{\bfseries}% heading font bold
  \thm@notefont{\mdseries\upshape}%
  \thm@preskip.5\baselineskip\@plus.2\baselineskip
                                    \@minus.2\baselineskip
  \thm@postskip\thm@preskip
  \upshape
}
\renewenvironment{proof}[1][\proofname]{\par \normalfont
  \topsep6\p@\@plus6\p@ \trivlist \itemindent\z@
  \item[\hskip\labelsep\bfseries
    #1\@addpunct{.}]\ignorespaces
}{%
  \qed\endtrivlist
}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{\textsc{#1}. #2}%
  \ifdim \wd\@tempboxa >\hsize
    \textsc{#1}. #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\newlength{\@auxlength}
\AtBeginDocument{%
  \settowidth{\@auxlength}{\textbf{999}}
  \renewcommand{\@pnumwidth}{\@auxlength}}
\def\numberline#1{\hb@xt@\@tempdima{#1.\hfil}}
\def\chapterline#1{%
  \advance\hangindent\@tempdima
  \hbox{#1.\space\space\hfil}}
\renewcommand*\l@chapter[2]{%
  \addpenalty{-\@highpenalty}%
  \vskip 1.0em \@plus\p@
  \begingroup
    \advance\hangindent 1.5em
    \@dottedtocline{0}{0pt}{0pt}{\scshape #1}{\bfseries #2}
  \endgroup
  \penalty\@highpenalty}
\renewcommand*\l@figure[2]{%
  \@dottedtocline{1}{0pt}{30pt}{\textsc{Figure} #1}{#2}}
\renewcommand*\l@table[2]{%
  \@dottedtocline{1}{0pt}{30pt}{\textsc{Table} #1}{#2}}
%%
%%
%% JRK 2010-04-21
%% I want the index to appear in the table of contents
\def\theindex{\@restonecoltrue\if@twocolumn\@restonecolfalse\fi
\columnseprule \z@
\columnsep 35\p@\twocolumn[\@makeschapterhead{\indexname}]%
    \@mkboth{\uppercase{\indexname}}{\uppercase{\indexname}}%
    \addcontentsline{toc}{chapter}{\indexname}
    \thispagestyle{topright}\parindent\z@
    \parskip\z@ plus .3\p@\relax\let\item\@idxitem}
\endinput

%% End of file `ua-thesis.cls'.

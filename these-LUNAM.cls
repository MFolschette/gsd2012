%=============================================================================
% Mod�le de th�se du PRES L'UNAM
%=============================================================================
% v. 1.0 : 9 mai 2012
%   - cr�ation de la classe
% v. 1.1 : 8 juin 2012
%   - l�ger d�calage vers le haut du titre
%   - ajout d'un style pour les parties (en plus des chapitres)
% v. 1.1.1 : 7 ao�t 2012
%   - correction de la civilit� du co-directeur de th�se (par Flavien QUESNEL)
% v. 1.2 : 4 octobre 2012
%   - protection des pages de couverture vis-�-vis des changements d'interlignes
%   - indications suppl�mentaires dans le fichier mod�le
%   - ajout du logo d'une universit� �trang�re pour les co-tutelles et/ou
%     d'un �tablissement associ�   
%===================================================================
\def\THESE@LUNAM@version{1.2}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{these-LUNAM}[2012/29/05 these-LUNAM version \THESE@LUNAM@version]
\typeout{(c) 2012 Jos� Martinez, provided ``as is''}
\typeout{ }

%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Gestion des options =
% D�claration des options possibles
\newif\if@inEnglish
\DeclareOption{english}{\@inEnglishtrue}
\DeclareOption{francais}{\@inEnglishfalse}

\newif\if@inDraftMode
\DeclareOption{draft}{\@inDraftModetrue}
\DeclareOption{final}{\@inDraftModefalse}

\newif\if@squeezeCommittee
\DeclareOption{squeezeCommittee}{\@squeezeCommitteetrue}
\DeclareOption{nosqueezeCommittee}{\@squeezeCommitteefalse}

\newif\if@fancyChapter
\DeclareOption{fancyChapter}{\@fancyChaptertrue}
\DeclareOption{nofancyChapter}{\@fancyChapterfalse}

\newif\if@fancyPart
\DeclareOption{fancyPart}{\@fancyParttrue}
\DeclareOption{nofancyPart}{\@fancyPartfalse}

\DeclareOption{10pt}{\gdef\@pt@size{10pt}}
\DeclareOption{11pt}{\gdef\@pt@size{11pt}}
\DeclareOption{12pt}{\gdef\@pt@size{12pt}}

\ExecuteOptions{version, francais, final, 12pt, fancyChapter, fancyPart, nosqueezeCommittee}
\ProcessOptions\relax

%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< Fin gestion des options =

%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Chargement de paquetages additionnels =

\if@inDraftMode
   \PassOptionsToClass{\@pt@size, openany, draft}{book}
\else
   \PassOptionsToClass{\@pt@size, openany, final}{book}
\fi
\LoadClass{book}

\RequirePackage{amsmath}
\RequirePackage{xcolor}
   \definecolor{@doctoratcolor}{RGB}{255, 50, 10}
   \definecolor{@verticalgreen}{RGB}{236, 240, 223}
   \definecolor{@horizontalgray}{gray}{0.97265}
   \definecolor{@textgray}{gray}{0.5}
   \definecolor{@bandeaucolor}{RGB}{200, 200, 60}
   \definecolor{@titlecolor}{RGB}{49, 132, 155}
%\RequirePackage{graphicx}
%\RequirePackage[a4paper]{geometry}
\RequirePackage{ifthen}
%\RequirePackage[english,francais]{babel}
\RequirePackage{setspace}
\if@inEnglish
\AtBeginDocument{%
  \selectlanguage{english}
}
\else
\AtBeginDocument{%
  \selectlanguage{francais}
}
\fi

%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< fin chargement de paquetages additionnels =

%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Localisation
\if@inEnglish
   \newcommand{\acknowledgementsname}{Acknowledgements}
   \AtBeginDocument{%
      \def\today{\ifcase\month\or
      January\or February\or March\or April\or May\or June\or
      July\or August\or September\or October\or November\or December\fi
      ~\number\year}
      \renewcommand{\refname}{References}

   \newcommand{\BibNameFmt}{\rm}
   \newcommand{\EndBibNameFmt}{\rm}
   \newcommand{\andMacro}{and}
   \newcommand{\editorsMacro}{eds.}
   \newcommand{\editorMacro}{ed.}
   \newcommand{\editionMacro}{edition}
   \newcommand{\chapterMacro}{chapter}
   \newcommand{\trMacro}{Technical report}
   \newcommand{\ofMacro}{of}
   \newcommand{\thesisMacro}{Doctoral thesis}
   \newcommand{\toappearMacro}{To appear}

   \newcommand{\janMacro}{January }
   \newcommand{\febMacro}{February }
   \newcommand{\marMacro}{March }
   \newcommand{\aprMacro}{April }
   \newcommand{\mayMacro}{May }
   \newcommand{\junMacro}{June }
   \newcommand{\julMacro}{July }
   \newcommand{\augMacro}{August }
   \newcommand{\sepMacro}{September }
   \newcommand{\octMacro}{October }
   \newcommand{\novMacro}{November }
   \newcommand{\decMacro}{December }
   }
\else
   \newcommand{\acknowledgementsname}{Remerciements}
   \AtBeginDocument{%
   \def\today{\ifcase\month\or
    janvier\or f\'evrier\or mars\or avril\or mai\or juin\or
    juillet\or ao�t\or septembre\or octobre\or novembre\or d\'ecembre\fi
    ~\number\year}
   \renewcommand{\refname}{R\'ef\'erences}

   \newcommand{\BibNameFmt}{\sc}
   \newcommand{\EndBibNameFmt}{\rm}
   \newcommand{\andMacro}{et}
   \newcommand{\editorsMacro}{r\'eds.}
   \newcommand{\editorMacro}{r\'ed.}
   \newcommand{\editionMacro}{\'edition}
   \newcommand{\chapterMacro}{chapitre}
   \newcommand{\trMacro}{Rapport technique}
   \newcommand{\ofMacro}{de}
   \newcommand{\thesisMacro}{Th\`ese de doctorat}
   \newcommand{\toappearMacro}{\`A para\^\i{}tre}

   \newcommand{\janMacro}{janvier }
   \newcommand{\febMacro}{f\'evrier }
   \newcommand{\marMacro}{mars }
   \newcommand{\aprMacro}{avril }
   \newcommand{\mayMacro}{mai }
   \newcommand{\junMacro}{juin }
   \newcommand{\julMacro}{juillet }
   \newcommand{\augMacro}{ao\^ut }
   \newcommand{\sepMacro}{septembre }
   \newcommand{\octMacro}{octobre }
   \newcommand{\novMacro}{novembre }
   \newcommand{\decMacro}{d\'ecembre }
   }
\fi

%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< Fin customisations suivant la langue =

\global\let\@title\@empty
\def\title#1{%
   \ifx\@title\@empty
      \gdef\@title{#1}
   \else
      \ClassError{these-LUNAM}
                 {Titre de la th�se d�j� d�fini / Thesis title already defined}
                 {}
   \fi}

\global\let\@subtitle\@empty
\def\subtitle#1{%
   \ifx\@subtitle\@empty
      \gdef\@subtitle{#1}
   \else
      \ClassError{these-LUNAM}
                 {Sous-titre de la th�se d�j� d�fini / Thesis subtitle already defined}
                 {}
   \fi}

\global\let\@author\@empty
\def\author#1#2#3{%
   \ifx\@author\@empty
      \gdef\@author{#2 #3}
   \else
      \ClassError{these-LUNAM}
                 {Auteur d�j� d�fini / Author  already defined}
                 {}
   \fi}

\newcommand{\@formatcivilite}[1]{%
   \ifthenelse{\equal{#1}{M.}}%
      {M.}%
   {\ifthenelse{\equal{#1}{Monsieur}}%
      {M.}%
   {\ifthenelse{\equal{#1}{Mme}}%
      {M$^{\text{me}}$}%
   {\ifthenelse{\equal{#1}{Madame}}%
      {M$^{\text{me}}$}%
      {\ClassError{these-LUNAM}
                  {Civilit� erron�e, utilisez 'M.', 'Mme', 'Monsieur' ou 'Madame' / Erroneous title, use 'M.', 'Mme', 'Monsieur', or 'Madame', i.e. 'Mr.' or 'Ms'}%
                  {}}}}}}

\global\let\@supervisor\@empty
\newif\if@supervisorfemale\@supervisorfemalefalse
\newcommand\supervisor[5]{%
   \ifx\@supervisor\@empty
      \gdef\@supervisor{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
      \ifthenelse{\equal{#1}{Mme}}
                 {\@supervisorfemaletrue}
      {\ifthenelse{\equal{#1}{Madame}}
                  {\@supervisorfemaletrue}
                  {}}
   \else
      \ClassError{these-LUNAM}
                 {Directeur de th�se d�j� d�fini / Supervisor already defined}
                 {}
   \fi}

\global\let\@cosupervisor\@empty
\newif\if@cosupervisorfemale\@cosupervisorfemalefalse
\newcommand\cosupervisor[5]{%
   \ifx\@cosupervisor\@empty
      \gdef\@cosupervisor{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
      \ifthenelse{\equal{#1}{Mme}}
                 {\@cosupervisorfemaletrue}
      {\ifthenelse{\equal{#1}{Madame}}
                  {\@cosupervisorfemaletrue}
                  {}}
   \else
      \ClassError{these-LUNAM}
                 {Co-directeur de th�se d�j� d�fini / Co-supervisor already defined}
                 {}%
   \fi}

\global\let\@firstreviewer\@empty
\global\let\@secondreviewer\@empty
\global\let\@thirdreviewer\@empty
\newcommand\reviewer[5]{%
   \ifx\@firstreviewer\@empty
      \gdef\@firstreviewer{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
   \else\ifx\@secondreviewer\@empty
      \gdef\@secondreviewer{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
   \else\ifx\@thirdreviewer\@empty
      \gdef\@thirdreviewer{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
   \else
      \ClassError{these-LUNAM}
                 {Trop de rapporteurs, au plus trois / Too many reviewers, at most three}
                 {}%
   \fi\fi\fi}

\global\let\@firstexaminer\@empty
\global\let\@secondexaminer\@empty
\global\let\@thirdexaminer\@empty
\global\let\@fourthexaminer\@empty
\global\let\@fifthexaminer\@empty
\global\let\@sixthexaminer\@empty
\newcommand\examiner[5]{%
   \ifx\@firstexaminer\@empty
      \gdef\@firstexaminer{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
   \else\ifx\@secondexaminer\@empty
      \gdef\@secondexaminer{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
   \else\ifx\@thirdexaminer\@empty
      \gdef\@thirdexaminer{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
   \else\ifx\@fourthexaminer\@empty
      \gdef\@fourthexaminer{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
   \else\ifx\@fifthexaminer\@empty
      \gdef\@fifthexaminer{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
   \else\ifx\@sixthexaminer\@empty
      \gdef\@sixthexaminer{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
   \else
      \ClassError{these-LUNAM}
                 {Trop d'examinateurs, pas plus de six / Too many examiners, at most six}
                 {}%
   \fi\fi\fi\fi\fi\fi}

\global\let\@firstguest\@empty
\global\let\@secondguest\@empty
\global\let\@thirdguest\@empty
\global\let\@fourthguest\@empty
\global\let\@fifthguest\@empty
\global\let\@sixthguest\@empty
\newcommand\guest[5]{%
   \ifx\@firstguest\@empty
      \gdef\@firstguest{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
   \else\ifx\@secondguest\@empty
      \gdef\@secondguest{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
   \else\ifx\@thirdguest\@empty
      \gdef\@thirdguest{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
   \else\ifx\@fourthguest\@empty
      \gdef\@fourthguest{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
   \else
      \ClassError{these-LUNAM}
                 {Trop d'invit�s, pas plus de quatre / Too many guests, at most four}
                 {}%
   \fi\fi\fi\fi}

\global\let\@discipline\@empty
\newcommand\discipline[1]{%
   \ifx\@discipline\@empty
      \gdef\@discipline{#1}
   \else
      \ClassError{these-LUNAM}
                 {Discipline d�j� d�finie / Discipline already defined}
                 {}%
   \fi}

\global\let\@specialty\@empty
\newcommand\specialty[1]{%
   \ifx\@specialty\@empty
      \gdef\@specialty{#1}
   \else
      \ClassError{these-LUNAM}
                 {Sp�cialit� d�j� d�finie / Specialty already defined}
                 {}%
   \fi}

\global\let\@laboratory\@empty
\newcommand\laboratory[1]{%
   \ifx\@laboratory\@empty
      \gdef\@laboratory{#1}
   \else
      \ClassError{these-LUNAM}
                 {Laboratoire d�j� d�fini / Laboratory already defined}
                 {}%
   \fi}

\global\let\@institution\@empty
\global\let\@institutionlogo\@empty
\global\let\@institutionlogowidth\@empty
\newcommand\institution[1]{%
   \ifx\@institution\@empty
      \ifthenelse{\equal{#1}{UN}}
                 {\gdef\@institution{Université de Nantes}
                  \gdef\@institutionlogo{UniversiteNantes}
                  \gdef\@institutionlogowidth{3.2cm}}
      {\ifthenelse{\equal{#1}{UA}}
                 {\gdef\@institution{Université d'Angers}
                  \gdef\@institutionlogo{UniversiteAngers}
                  \gdef\@institutionlogowidth{2.2cm}}
      {\ifthenelse{\equal{#1}{UM}}
                 {\gdef\@institution{Université du Maine}
                  \gdef\@institutionlogo{UniversiteMaine}
                  \gdef\@institutionlogowidth{3.2cm}}
      {\ifthenelse{\equal{#1}{ECN}}
                 {\gdef\@institution{\'Ecole centrale de Nantes}
                  \gdef\@institutionlogo{EcoleCentraleNantes}
                  \gdef\@institutionlogowidth{2cm}}
      {\ifthenelse{\equal{#1}{EMN}}
                 {\gdef\@institution{École des mines de Nantes}
                  \gdef\@institutionlogo{EcoleMinesNantes}
                  \gdef\@institutionlogowidth{4cm}}
                 {\gdef\@institution{#1}
                  \gdef\@institutionlogo{#1}
                  \gdef\@institutionlogowidth{2cm}}}}}}
   \else
      \ClassError{these-LUNAM}
                 {Institution d�j� d�finie / Institution already defined}
                 {}%
   \fi}

\global\let\@coinstitution\@empty
\global\let\@coinstitutionlogo\@empty
\global\let\@coinstitutionlogowidth\@empty
\global\let\@coinstitutionlogovoffset\@empty
\newcommand\coinstitution[4][0pt]{%
   \ifx\@coinstitution\@empty
      \gdef\@coinstitution{#2}
      \gdef\@coinstitutionlogo{#3}
      \gdef\@coinstitutionlogowidth{#4}
      \gdef\@coinstitutionlogovoffset{#1}
   \else
      \ClassError{these-LUNAM}
                 {co-institution d�j� d�finie / co-institution already defined}
                 {}%
   \fi}

\global\let\@cocoinstitution\@empty
\global\let\@cocoinstitutionlogo\@empty
\global\let\@cocoinstitutionlogowidth\@empty
\global\let\@cocoinstitutionlogovoffset\@empty
\newcommand\cocoinstitution[4][0pt]{%
   \ifx\@cocoinstitution\@empty
      \gdef\@cocoinstitution{#2}
      \gdef\@cocoinstitutionlogo{#3}
      \gdef\@cocoinstitutionlogowidth{#4}
      \gdef\@cocoinstitutionlogovoffset{#1}
   \else
      \ClassError{these-LUNAM}
                 {coco-institution d�j� d�finie / coco-institution already defined}
                 {}%
   \fi}

\global\let\@thesisnumber\@empty
\newcommand\thesisnumber[1]{%
   \ifx\@thesisnumber\@empty
      \gdef\@thesisnumber{#1}
   \else
      \ClassError{these-LUNAM}
                 {Num�ro de th�se d�j� d�fini / Thesis number already defined}
                 {}%
   \fi}

\global\let\@doctoralschool\@empty
\newcommand\doctoralschool[1]{%
   \ifx\@doctoralschool\@empty
      \gdef\@doctoralschool{#1}
   \else
      \ClassError{these-LUNAM}
                 {Ecole doctorale d�j� d�finie / Doctoral school already defined}
                 {}%
   \fi}
%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Champs d'identification =

%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< Fin champs d'identification =

\newcommand{\@committee}{%
   \ifx\@firstreviewer\@empty
      \ClassError{these-LUNAM}
                 {Il manque les rapporteurs, utilisez la macro \string\reviewer / Reviewers are missing, use \string\reviewer}
                 {}
   \fi
   \ifx\@secondreviewer\@empty
      \ClassError{these-LUNAM}
                 {Il faut au moins deux rapporteurs, utilisez de nouveau la macro \string\reviewer / At least two reviewers are needed, use again \string\reviewer}
                 {}
   \fi
   \begin{tabular}{ll}
      Reviewer :           & \@firstreviewer \\
                              & \@secondreviewer \\
      \ifx\@thirdreviewer\@empty
      \else
                              & \@thirdreviewer \\
      \fi

      \ifx\@firstexaminer\@empty
      \else\ifx\@secondexaminer\@empty
      &\\
      Examiner :           & \@firstexaminer\\
         \else
      &\\
      Examiners :          & \@firstexaminer\\
                              & \@secondexaminer\\

         \ifx\@thirdexaminer\@empty
         \else
                              & \@thirdexaminer\\
         \fi

         \ifx\@fourthexaminer\@empty
         \else
                              & \@fourthexaminer\\
         \fi

         \ifx\@fifthexaminer\@empty
         \else
                              & \@fifthexaminer\\
         \fi

         \ifx\@sixthexaminer\@empty
         \else
                              & \@sixthexaminer\\
         \fi
      \fi\fi

      \ifx\@firstguest\@empty
      \else\ifx\@secondguest\@empty
      &\\
      Invit� :                & \@firstguest\\
         \else
      &\\
      Invit�s :               & \@firstguest\\
                              & \@secondguest\\

         \ifx\@thirdguest\@empty
         \else
                              & \@thirdguest\\
         \fi

         \ifx\@fourthguest\@empty
         \else
                              & \@fourthguest\\
         \fi
      \fi\fi

      &\\
      \if@supervisorfemale
         Supervisor :    & \@supervisor\\
      \else
         Supervisor :     & \@supervisor\\
      \fi

      \ifx\@cosupervisor\@empty
      \else
         &\\
         \if@cosupervisorfemale
            Co-supervisor :    & \@cosupervisor\\
         \else
            Co-supervisor :     & \@cosupervisor\\
         \fi
      \fi
   \end{tabular}}

\newcommand{\@drawbackground}
   { % Horizontal grey-green box
   \noindent\raisebox{0pt}[0pt][0pt]
                     {\colorbox{@verticalgreen}
                               {\makebox[0.5\textwidth]
                                        {\raisebox{-\textheight}
                                                  {~}}}}

   \vspace{4\baselineskip}

   {
   \noindent\hspace{0.45\textwidth}
            \raisebox{0pt}[0pt][0pt]
                     {\color{@horizontalgray}
                      \rule{0.55\textwidth}
                           {2.5\baselineskip}}
            \hspace{-0.45\textwidth}
   }

   \sffamily
   \noindent\makebox[0.55\textwidth][r]
                    {\Huge\textbf{\textcolor{@doctoratcolor}
                                            {PhD Survival Guide}}}

   {
   \noindent\color{@bandeaucolor}
            \rule{0.55\textwidth}
                 {2.5\baselineskip}
            \color{@horizontalgray}
            \rule{0.45\textwidth}
                 {2.5\baselineskip}
   }

   \vspace{3\baselineskip}

   {
   \noindent\hspace{0.45\textwidth}
            \raisebox{0pt}[0pt][0pt]
                     {\color{@horizontalgray}
                      \rule{0.55\textwidth}
                           {2.5\baselineskip}}
            \hspace{-0.45\textwidth}
   }

   \vspace{-15\baselineskip}
   \includegraphics[width=2.5cm]{logos/aed.png}
   \hfill
   \hfill
   \hfill
   \ifx\@cocoinstitution\@empty
   \else
      \raisebox{\@cocoinstitutionlogovoffset}[0pt][0pt]{\includegraphics[width=\@cocoinstitutionlogowidth]{logos/\@cocoinstitutionlogo}}~
      \hfill
   \fi
   \ifx\@coinstitution\@empty
   \else
      \raisebox{\@coinstitutionlogovoffset}[0pt][0pt]{\includegraphics[width=\@coinstitutionlogowidth]{logos/\@coinstitutionlogo}}~
      \hfill
   \fi
   \raisebox{0pt}[0pt][0pt]{\includegraphics[width=\@institutionlogowidth]{logos/\@institutionlogo}}~
   \vspace{11\baselineskip}
   }

\renewcommand{\maketitle}{%
   % Controlling that the required information is available
   \ifx\@title\@empty
      \ClassError{these-LUNAM}
                 {Titre de la th�se ind�fini, utilisez la macro \string\title / Thesis title undefined, use \string\title}
                 {}
   \fi
   \ifx\@institution\@empty
      \ClassError{these-LUNAM}
                 {Institution ind�finie, utilisez la macro \string\institution / Institution undefined, use \string\institution}
                 {}
   \fi
   \ifx\@supervisor\@empty
      \ClassError{these-LUNAM}
                 {Directeur th�se ind�fini, utilisez la macro \string\supervisor / Ph.D. Director undefined, use \string\supervisor}
                 {}
   \fi
   \ifx\@discipline\@empty
      \ClassError{these-LUNAM}
                 {Discipline ind�finie, utilisez la macro \string\discipline / Discipline undefined, use \string\discipline}
                 {}
   \fi
   \ifx\@laboratory\@empty
      \ClassError{these-LUNAM}
                 {Laboratoire ind�fini, utilisez la macro \string\laboratory / Laboratory undefined, use \string\laboratory}
                 {}
   \fi
   \ifx\@author\@empty
      \ClassError{these-LUNAM}
                 {Auteur ind�fini, utilisez la macro \string\author / Author undefined, use \string\author}
                 {}
   \fi
   \ifx\@thesisnumber\@empty
      \ClassError{these-LUNAM}
                 {Num�ro de th�se ind�fini, utilisez la macro \string\thesisnumber / Thesis number undefined, use \string\thesisnumber}
                 {}
   \fi
   \ifx\@doctoralschool\@empty
      \ClassError{these-LUNAM}
                 {Ecole doctorale ind�finie, utilisez la macro \string\doctoralschool / Doctoral school undefined, use \string\doctoralschool}
                 {}
   \fi

   \newgeometry{margin=1.5cm}
   \begin{titlepage}
      {
      \singlespacing
      \@drawbackground

      \sffamily
      \vspace{-3.2\baselineskip}
      \hspace{0.5\textwidth}
      \raisebox{0pt}
               [0pt]
               [2\baselineskip]
               {\parbox[t][][c]
                       {0.5\textwidth}
                       {\raggedright\huge\textcolor{@doctoratcolor}{\@author}}}

      \small
      \noindent\textsl{Guide written in order to help}\par
      \noindent\textsl{\textbf{new Master and PhD Students}}\par
      \noindent\textsl{on the �cole Centrale de Nantes Campus}\par

      \vspace{\baselineskip}

      \footnotesize
      \noindent\textsl{\textbf{Discipline : \@discipline}}\par
      \noindent\textsl{\textbf{Speciality : \ifx\@specialty\@empty\else\@specialty\fi}}\par
      \noindent\textsl{\textbf{Laboratories : \@laboratory}}\par

      \vspace{\baselineskip}

      \footnotesize
      \noindent\textbf{Defended in \@date}\par

      \vspace{\baselineskip}

      \footnotesize
      \noindent\textbf{Doctoral Schools : \@doctoralschool}\par
      \noindent\textbf{Thesis n\textdegree\ : \@thesisnumber}\par

      \vfill

      \hfill
      \parbox{0.75\textwidth}
             {\begin{flushright}
                 \Large\textcolor{@titlecolor}{\textbf{\@title}}\\
                 \ifx\@subtitle\@empty
                    \relax
                 \else
                    \normalsize\textcolor{@titlecolor}{\textbf{\@subtitle}}\\\relax
                 \fi
              \end{flushright}}

      \vfill
      \vfill
      \vfill

      \begin{center}
         \textcolor{@titlecolor}{\textbf{\small JURY}}
      \end{center}
      \if@squeezeCommittee
         \noindent\resizebox{\textwidth}{!}{\@committee}
      \else
         \noindent\footnotesize\@committee
      \fi
      }
   \end{titlepage}
   \restoregeometry
} % \maketitle

%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Quatri�me de couverture =

\newcount\@startingPage
\newcommand{\makecover}{%
   \singlespacing
   \newgeometry{margin=1.5cm}
   \cleardoublepage % go to odd page
   \phantom{placeholder} % doesn't appear on page
   \newpage % on even page
   \thispagestyle{empty} % no numbering

   \@startingPage\thepage\relax

      {
      \@drawbackground
      \vspace{-5.5\baselineskip}
      \sffamily
      \begin{quote}
         \textbf{\Large\textcolor{@textgray}{\@author}}\par
         \textbf{\textcolor{@textgray}{\@title}}\par
         \ifx\@subtitle\@empty
            \relax
         \else
            \textcolor{@textgray}{\@subtitle}
         \fi
      \end{quote}

      \vfill

      \noindent
      \hfill\parbox[t][][b]
            {0.47\textwidth}
            {\makebox[0.47\textwidth]{\usebox{\@resumeBoxGlobal}}}
      \hfill
      \hfill\parbox[t][][b]
            {0.47\textwidth}
            {\makebox[0.47\textwidth]{\usebox{\@abstractBoxGlobal}}}
      \hfill\par

      \vfill

      \noindent
      \hfill\parbox[t][][b]
            {0.47\textwidth}
            {\makebox[0.47\textwidth]{\usebox{\@motsclesBoxGlobal}}}
      \hfill
      \hfill\parbox[t][][b]
            {0.47\textwidth}
            {\makebox[0.47\textwidth]{\usebox{\@keywordsBoxGlobal}}}
      \hfill\par

      \vfill

      \hspace{0.45\textwidth}\raisebox{-2.2\baselineskip}
                                      [0pt][0pt]
                                      {\colorbox{@bandeaucolor}
                                                {\parbox[s]
                                                        [2\baselineskip]
                                                        [c]
                                                        {0.55\textwidth}
                                                        {~\hfill
                                                         \textcolor{white}
                                                                   {L'UNIVERSIT\'E NANTES ANGERS LE MANS}
                                                         \hfill~}}}
      }
   \ifnum\thepage > \@startingPage\relax
      \typeout{\the\@startingPage vs. \thepage}
      \ClassError{these-LUNAM}
                 {Quatri�me de couverture d�bord�e, r�duire les r�sum�s et leurs mots cl�s / Last cover page overflowed, reduce the size of both abstracts and their key words}
                 {}
   \fi
   \restoregeometry
} % \makecover

\AtEndDocument{\makecover}

%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< Fin quatri�me de couverture =

\newsavebox{\@resumeBox}
\newbox{\@resumeBoxGlobal}
\newenvironment{resume}
   {
   \newgeometry{margin=1.5cm}
   \begin{lrbox}{\@resumeBox}%
      \small\sffamily
      \begin{minipage}{0.47\textwidth}
         \begin{flushleft}
           \textbf{R\'esum\'e}\par
   }
   {
         \end{flushleft}
      \end{minipage}
   \end{lrbox}
   \restoregeometry
   \global\setbox\@resumeBoxGlobal=\vbox{\copy\@resumeBox}
   }

\newsavebox{\@abstractBox}
\newbox{\@abstractBoxGlobal}
\newenvironment{abstract}
   {
   \newgeometry{margin=1.5cm}
   \begin{lrbox}{\@abstractBox}%
      \small\sffamily
      \begin{minipage}{0.47\textwidth}
         \begin{flushleft}
           \textbf{Abstract}\par
   }
   {
         \end{flushleft}
      \end{minipage}
   \end{lrbox}
   \restoregeometry
   \global\setbox\@abstractBoxGlobal=\vbox{\copy\@abstractBox}
   }

\newsavebox{\@keywordsBox}
\newbox{\@keywordsBoxGlobal}
\newenvironment{keywords}
   {
   \newgeometry{margin=1.5cm}
   \begin{lrbox}{\@keywordsBox}%
      \small\sffamily
      \begin{minipage}{0.47\textwidth}
         \begin{flushleft}
            \textbf{Key Words}\par
   }
   {
         \end{flushleft}
      \end{minipage}
   \end{lrbox}
   \restoregeometry
   \global\setbox\@keywordsBoxGlobal=\vbox{\copy\@keywordsBox}
   }

\newsavebox{\@motsclesBox}
\newbox{\@motsclesBoxGlobal}
\newenvironment{motscles}
   {
   \newgeometry{margin=1.5cm}
   \begin{lrbox}{\@motsclesBox}%
      \small\sffamily
      \begin{minipage}{0.47\textwidth}
         \begin{flushleft}
            \textbf{Mots cl�s}\par
   }
   {
         \end{flushleft}
      \end{minipage}
   \end{lrbox}
   \restoregeometry
   \global\setbox\@motsclesBoxGlobal=\vbox{\copy\@motsclesBox}
   }

\def\cleardoublepage{\clearpage\thispagestyle{empty}%
  \ifodd\c@page\else
    \hbox{}\newpage\thispagestyle{empty}\if@twocolumn\hbox{}\newpage\fi\fi}

\if@fancyChapter
   % Redefinition de l'en-tete de chapitre.
   \def\@makechapterhead#1{%
     \vspace*{50\p@}%
     {\parindent \z@ \raggedleft \normalfont
       \ifnum \c@secnumdepth >\m@ne
           \vskip 20\p@

           \hfill\color{@verticalgreen}\rule{10\baselineskip}{\baselineskip}\par
           \vspace{\baselineskip}
           \hfill\color{@verticalgreen}\rule{10\baselineskip}{\baselineskip}\par
           \vspace{\baselineskip}
           \color{@bandeaucolor}\rule{\textwidth}{0.1\baselineskip}\hspace{-10\baselineskip}\color{@verticalgreen}\rule{10\baselineskip}{\baselineskip}\par
           \hfill\raisebox{2\baselineskip}[0pt][0pt]{\Huge\textbf{\scalebox{4}{\textcolor{@doctoratcolor}{\thechapter}}}}\par\nobreak
           \vskip 10\p@
       \fi
       \interlinepenalty\@M
       \raggedright
       \Huge \bfseries \textcolor{@titlecolor}{#1}\par\nobreak
       \vskip 40\p@
     }}
\fi

\if@fancyPart
   % Redefinition de l'en-tete de partie
   \def\@part[#1]#2{%
       \ifnum \c@secnumdepth >-2\relax
         \refstepcounter{part}%
         \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
       \else
         \addcontentsline{toc}{part}{#1}%
       \fi
       \markboth{}{}%
       {\centering
        \interlinepenalty \@M
        \normalfont
        \ifnum \c@secnumdepth >-2\relax
           \hfill\color{@verticalgreen}\rule{15\baselineskip}{1.5\baselineskip}\par
           \vspace{1.5\baselineskip}
           \hfill\color{@verticalgreen}\rule{15\baselineskip}{1.5\baselineskip}\par
           \vspace{1.5\baselineskip}
           \hfill\color{@verticalgreen}\rule{15\baselineskip}{1.5\baselineskip}\par
           \hfill\raisebox{2.5\baselineskip}[0pt][0pt]{\Huge\textbf{\scalebox{6}{\textcolor{@doctoratcolor}{\thepart}}}}\par\nobreak
           \vfill
        \fi
        \Huge \bfseries \color{@titlecolor}#2\par}%
       \@endpart}
   \def\@spart#1{%
       {\centering
        \interlinepenalty \@M
        \normalfont
        \Huge \bfseries \color{@titlecolor}#1\par}%
       \@endpart}
   \def\@endpart{\vfill\vfill\vfill\newpage
                 \if@twoside
                  \if@openright
                   \null
                   \thispagestyle{empty}%
                   \newpage
                  \fi
                 \fi
                 \if@tempswa
                   \twocolumn
                 \fi}
\fi

\endinput

%%% Local Variables:
%%% mode: latex
%%% TeX-master: t
%%% End:


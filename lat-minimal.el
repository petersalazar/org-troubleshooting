;; === some org-mode settings =====================================================
 (setq load-path (cons "~/Library/Preferences/Aquamacs Emacs/org" load-path))
 (setq load-path (cons "~/Library/Preferences/Aquamacs Emacs/org/lisp" load-path))


(require 'ox-latex)
(require 'org-latex)
(setq org-latex-listings t)

(setq org-latex-to-pdf-process
  '("xelatex -interaction nonstopmode %f"
     "xelatex -interaction nonstopmode %f")) ;; for multiple passes

(setq org-latex-pdf-process
  '("xelatex -interaction nonstopmode %f"
     "xelatex -interaction nonstopmode %f")) ;; for multiple passes


;; find the correct LaTeX directory
(if (eq window-system 'mac)
   (add-to-list 'exec-path "/usr/local/texlive/2012/bin/universal-darwin")
)






;; =============================================================
;; === LATEX ;==============================================================


(unless (boundp 'org-latex-classes)
  (setq org-latex-classes nil))

(add-to-list 'org-latex-classes
  '("ilija"
"\\documentclass[12pt]{article}
\\setcounter{\\secnumdepth}{0}
\\usepackage{float}
\\usepackage[breaklinks=true,linktocpage,pdftitle={\\@title},pdfauthor={\\@author},xetex]{hyperref}
\\usepackage{algorithm}
\\usepackage{amsmath}
\\usepackage{ifxetex}
\\ifxetex
  \\usepackage{fontspec,xltxtra,xunicode}
  \\defaultfontfeatures{Mapping=tex-text,Scale=MatchLowercase}
  \\setromanfont{Adobe Garamond Pro}
  \\setsansfont{Arial}
  \\setmonofont{Courier}
\\else
  \\usepackage[mathletters]{ucs}
  \\usepackage[utf8x]{inputenc}
\\fi
\\usepackage{url}
\\usepackage{graphicx}
\\hypersetup{ colorlinks, citecolor=SteelBlue4,filecolor=SteelBlue4,linkcolor=SteelBlue4,urlcolor=SteelBlue4}
\\usepackage[includeheadfoot,margin=2.2in,hmargin=2.2in,vmargin=1.5in]{geometry}
\\usepackage{calc}

\\makeatletter
\\def\\maketitle{
  \\thispagestyle{empty}
    \\vfill
  \\begin{raggedright}
  \\leavevmode
    \\vskip 1cm
    \{\\fontsize{50}{60}\\fontspec[Color=SteelBlue4,Opacity=0.2]{Adobe Garamond Pro}\\textbf{\\@title}\\par}
    \\vskip 1cm
    \\normalfont
    \{\\fontsize{30}{40}{{\\textit{\\@author}\\par}}}
  \\vfill
        \{\\Large Peter Salazar}
    \\newline
          \{\\Large \\href{mailto:cycleofsong@gmail.com}{cycleofsong@gmail.com}}
        \\newline
          \{\\Large \\href{http://cycleofsong.com}{http://cycleofsong.com}}
        \\newline
    \{\\Large \\@date\\par}
   \\end{raggedright}
  \\null
  \\cleardoublepage
\}
\\usepackage{fancyhdr}
\\pagestyle{fancy}
\\renewcommand{\\sectionmark}[1]{\\markboth{#1}{}}
\\lhead{\\href{http://cycleofsong.com}{Peter Salazar}}
\\chead{}
\\rhead{{\\@title}: {\\nouppercase{\\leftmark}}}
\\lfoot{}
\\cfoot{\\thepage}
\\rfoot{}
\\usepackage{listings}
\\setlength{\\parindent}{0pt}
\\setlength{\\parskip}{12pt plus 2pt minus 1pt}
\\usepackage{fancyvrb}
\\usepackage{enumerate}
\\usepackage{ctable}
\\setlength{\\paperwidth}{8.5in}
\\setlength{\\paperheight}{11in}
  \\tolerance=1000
\\usepackage{tocloft}
\\renewcommand{\\cftsecleader}{\\cftdotfill{\\cftdotsep}}
\\usepackage[normalem]{ulem}
\\usepackage[hyperref,x11names]{xcolor}

\\definecolor{ghostlygrey}{HTML}{000000}
\\definecolor{parchment}{HTML}{FFFFFF}



\\makeatletter
\\newcommand{\\globalcolor}[1]{%
  \\color{#1}\\global\\let\\default@color\\current@color
\}
\\makeatother

\\AtBeginDocument{\\globalcolor{ghostlygrey}}

\\newcommand{\\textsubscr}[1]{\\ensuremath{_{\\scriptsize\\textrm{#1}}}}

\\usepackage{enumitem}
\\setlist{nolistsep}
\\renewcommand{\\labelitemi}{$\\bullet$}
\\renewcommand{\\labelitemii}{$\\bullet$}
\\renewcommand{\\labelitemiii}{$\\bullet$}
\\renewcommand{\\labelitemiv}{$\\bullet$}

\\usepackage{titlesec}
\\definecolor{firstcolor}{HTML}{345A8A}
\\definecolor{secondcolor}{HTML}{FF7F00}
\\titleformat*{\\section}{\\normalfont\\Large\\bfseries\\color{firstcolor}}
\\titleformat*{\\subsection}{\\normalfont\\large\\bfseries\\color{secondcolor}}
\\titleformat*{\\subsubsection}{\\normalfont\\normalsize\\bfseries\\color{SteelBlue4}}
\\titleformat*{\\paragraph}{\\normalfont\\normalsize\\bfseries\\color{SteelBlue4}}
\\titleformat*{\\subparagraph}{\\normalfont\\normalsize\\bfseries\\color{SteelBlue4}}

      [NO-DEFAULT-PACKAGES]
      [NO-PACKAGES]"
     ("\\section{%s}" . "\\section*{%s}")
     ("\\subsection{%s}" . "\\subsection*{%s}")
     ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
     ("\\paragraph{%s}" . "\\paragraph*{%s}")
     ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))


(setq org-latex-to-pdf-process 
  '("xelatex -interaction nonstopmode %f"
     "xelatex -interaction nonstopmode %f")) ;; for multiple passes



%!TEX encoding = UTF-8 Unicode
%
% Europass curriculum vitae class
% Author: Giacomo Mazzamuto
% based on the europecv class by Nicola Vitacolonna (http://ctan.org/pkg/europecv)

% This material is subject to the LaTeX Project Public License Version 1.3.
% See  http://www.latex-project.org/lppl.txt
% for the details of that license
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{europasscv}[2015/03/10 (beta) Europass curriculum vitae class, 2013 version]

% CV models and instructions:
%   http://europass.cedefop.eu.int/htm/index.htm
% Recommendations:
%   http://europa.eu.int/scadplus/leg/en/cha/c11057.htm

\newcommand\ecv@utf[1]{#1}

% Set language
\DeclareOption{english}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_en.def}{}{%
    \ClassError{europasscv}{English definition file 'europasscv_en.def' not found}%
     {The file should be inside the europasscv folder.\MessageBreak
    Try to re-install the europasscv class.}}%
  }%
}
\DeclareOption{italian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_it.def}{}{%
    \ClassWarningNoLine{europasscv}{Italian definition file 'europasscv_it.def' not found}}%
  }%
}
\DeclareOption{spanish}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_es.def}{}{%
    \ClassWarningNoLine{europasscv}{Spanish definition file 'europasscv_es.def' not found}}%
  }%
}
\DeclareOption{french}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_fr.def}{}{%
    \ClassWarningNoLine{europasscv}{French definition file 'europasscv_fr.def' not found}}%
  }%
}
\DeclareOption{danish}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_da.def}{}{%
    \ClassWarningNoLine{europasscv}{Danish definition file 'europasscv_da.def' not found}}%
  }%
}
\DeclareOption{german}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_de.def}{}{%
    \ClassWarningNoLine{europasscv}{German definition file 'europasscv_de.def' not found}}%
  }%
}
\DeclareOption{finnish}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_fi.def}{}{%
    \ClassWarningNoLine{europasscv}{Finnish definition file 'europasscv_fi.def' not found}}%
  }%
}
\DeclareOption{portuges}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_pt.def}{}{%
    \ClassWarningNoLine{europasscv}{Portuguese definition file 'europasscv_pt.def' not found}}%
  }%
}
\DeclareOption{portuguese}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_pt.def}{}{%
    \ClassWarningNoLine{europasscv}{Portuguese definition file 'europasscv_pt.def' not found}}%
  }%
}
\DeclareOption{swedish}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_sv.def}{}{%
    \ClassWarningNoLine{europasscv}{Swedish definition file 'europasscv_sv.def' not found}}%
  }%
}
\DeclareOption{norwegian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_no.def}{}{%
    \ClassWarningNoLine{europasscv}{Norwegian definition file 'europasscv_no.def' not found}}%
  }%
}
\DeclareOption{dutch}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_nl.def}{}{%
    \ClassWarningNoLine{europasscv}{Dutch definition file 'europasscv_nl.def' not found}}%
  }%
}
\DeclareOption{catalan}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_ca.def}{}{%
    \ClassWarningNoLine{europasscv}{Catalan definition file 'europasscv_ca.def' not found}}%
  }%
}
\DeclareOption{polish}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_pl.def}{}{%
    \ClassWarningNoLine{europasscv}{Polish definition file 'europasscv_pl.def' not found}}%
  }%
}
\DeclareOption{hungarian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_hu.def}{}{%
    \ClassWarningNoLine{europasscv}{Hungarian definition file 'europasscv_hu.def' not found}}%
    \ecvpage{\thepage\ifx\@empty\ecv@totpages.\else\ecv@totpages\fi~\ecv@pagekey}
    \def\ecv@lfoot{%
  \footnotesize\textrm{\ecv@page~- \textrm{\ecv@footername} \ecv@cvofkey}}%
  }%
}
\DeclareOption{estonian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_et.def}{}{%
    \ClassWarningNoLine{europasscv}{Estonian definition file 'europasscv_et.def' not found}}%
  }%
}
\DeclareOption{icelandic}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_is.def}{}{%
    \ClassWarningNoLine{europasscv}{Icelandic definition file 'europasscv_is.def' not found}}%
  }%
}
\DeclareOption{lithuanian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_lt.def}{}{%
    \ClassWarningNoLine{europasscv}{Lithuanian definition file 'europasscv_lt.def' not found}}%
  }%
}
\DeclareOption{czech}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_cs.def}{}{%
    \ClassWarningNoLine{europasscv}{Czech definition file 'europasscv_cs.def' not found}}%
  }%
}
\DeclareOption{slovak}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_sk.def}{}{%
    \ClassWarningNoLine{europasscv}{Slovak definition file 'europasscv_sk.def' not found}}%
  }%
}
\DeclareOption{latvian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_lv.def}{}{%
    \ClassWarningNoLine{europasscv}{Latvian definition file 'europasscv_lv.def' not found}}%
  }%
}
\DeclareOption{slovenian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_sl.def}{}{%
    \ClassWarningNoLine{europasscv}{Slovenian definition file 'europasscv_sl.def' not found}}%
  }%
}
\DeclareOption{romanian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_ro.def}{}{%
    \ClassWarningNoLine{europasscv}{Romanian definition file 'europasscv_ro.def' not found}}%
  }%
}
\DeclareOption{maltese}{%
  \AtEndOfPackage{%
    \InputIfFileExists{europasscv_mt.def}{}{%
    \ClassWarningNoLine{europasscv}{Maltese definition file 'europasscv_mt.def' not found}}%
  }%
}
\DeclareOption{bulgarian}{%
  \AtEndOfPackage{%
      \InputIfFileExists{europasscv_bg.def}{}{%
      \ClassWarningNoLine{europasscv}{Bulgarian definition file 'europasscv_bg.def' not found}}%
  }%
}
\DeclareOption{greek}{%
  \AtEndOfPackage{%
     \InputIfFileExists{europasscv_gr.def}{}{%
    \ClassWarningNoLine{europasscv}{Greek definition file 'europasscv_gr.def' not found}}%
  }%
}
\DeclareOption{galician}{%
  \AtEndOfPackage{%
     \InputIfFileExists{europasscv_gl.def}{}{%
    \ClassWarningNoLine{europasscv}{Galician definition file 'europasscv_gl.def' not found}}%
  }%
}
\DeclareOption{serbian}{%
  \AtEndOfPackage{%
     \InputIfFileExists{europasscv_sr.def}{}{%
    \ClassWarningNoLine{europasscv}{Serbian definition file 'europasscv_sr.def' not found}}%
  }%
}

% Input encodings
\DeclareOption{ascii}{\AtEndOfClass{\inputencoding{ascii}}}
\DeclareOption{latin1}{\AtEndOfClass{\inputencoding{latin1}}}
\DeclareOption{latin2}{\AtEndOfClass{\inputencoding{latin2}}}
\DeclareOption{latin3}{\AtEndOfClass{\inputencoding{latin3}}}
\DeclareOption{latin4}{\AtEndOfClass{\inputencoding{latin4}}}
\DeclareOption{latin5}{\AtEndOfClass{\inputencoding{latin5}}}
\DeclareOption{latin9}{\AtEndOfClass{\inputencoding{latin9}}}
\DeclareOption{latin10}{\AtEndOfClass{\inputencoding{latin10}}}
\DeclareOption{decmulti}{\AtEndOfClass{\inputencoding{decmulti}}}
\DeclareOption{cp850}{\AtEndOfClass{\inputencoding{cp850}}}
\DeclareOption{cp852}{\AtEndOfClass{\inputencoding{cp852}}}
\DeclareOption{cp858}{\AtEndOfClass{\inputencoding{cp858}}}
\DeclareOption{cp437}{\AtEndOfClass{\inputencoding{cp437}}}
\DeclareOption{cp437de}{\AtEndOfClass{\inputencoding{cp437de}}}
\DeclareOption{cp865}{\AtEndOfClass{\inputencoding{cp865}}}
\DeclareOption{applemac}{\AtEndOfClass{\inputencoding{applemac}}}
\DeclareOption{next}{\AtEndOfClass{\inputencoding{next}}}
\DeclareOption{cp1250}{\AtEndOfClass{\inputencoding{cp1250}}}
\DeclareOption{cp1252}{\AtEndOfClass{\inputencoding{cp1252}}}
\DeclareOption{cp1257}{\AtEndOfClass{\inputencoding{cp1257}}}
\DeclareOption{ansinew}{\AtEndOfClass{\inputencoding{ansinew}}}
\DeclareOption{utf8}{\AtEndOfClass{\inputencoding{utf8x}}}
\DeclareOption{utf8x}{\AtEndOfClass{\inputencoding{utf8x}}}
\DeclareOption{koi8-r}{\AtEndOfClass{\inputencoding{koi8-r}}}
\DeclareOption{koi8-ru}{\AtEndOfClass{\inputencoding{koi8-ru}}}
\DeclareOption{koi8-u}{\AtEndOfClass{\inputencoding{koi8-u}}}
\DeclareOption{cp1251}{\AtEndOfClass{\inputencoding{cp1251}}}
\DeclareOption{cp855}{\AtEndOfClass{\inputencoding{cp855}}}
\DeclareOption{cp866}{\AtEndOfClass{\inputencoding{cp866}}}
\DeclareOption{maccyr}{\AtEndOfClass{\inputencoding{maccyr}}}
\DeclareOption{macukr}{\AtEndOfClass{\inputencoding{macukr}}}

% Set font
\DeclareOption{helvetica}{%                       
  \renewcommand{\rmdefault}{phv}
  \renewcommand{\sfdefault}{phv}
}
\DeclareOption{arial}{%                       
  \renewcommand{\rmdefault}{ma1} % (this font is NOT installed by default!)
  \renewcommand{\sfdefault}{ma1}
}

\DeclareOption{narrow}{
 \def\ecv@narrow{}
}

\newif\if@ecvbigfont\@ecvbigfontfalse
\DeclareOption{bigfont} {
  \@ecvbigfonttrue
}

\def\ecv@textcolor{ecvtextcolor}
\DeclareOption{black} {
  \def\ecv@textcolor{black}
}

\def\ecv@currvitaekey{}
\newcommand{\ecvcurrvitae}{\ifx\@empty\ecv@currvitaekey Curriculum vitae \else \ecv@currvitaekey \fi}
\newcommand{\ecvcoloredtitle}{\fontfamily{phv}\fontseries{m}\selectfont \textcolor{ecvhighlightcolor}{\ecvcurrvitae}}

% Europass logo
\newif\if@ecvlogo\@ecvlogotrue
\DeclareOption{nologo}{\@ecvlogofalse}
\DeclareOption{notitle}{\def\ecv@notitle{}}

% Page numbering
\DeclareOption{totpages}{%
  \AtEndOfPackage{\RequirePackage{totpages}%
  \def\ecv@totpages{~/~\ref{TotPages}}
  %\ecvpage{\ecv@pagekey~\thepage~/~\ref{TotPages}}%
  }%
}

\newif\if@ecvnodocument\@ecvnodocumentfalse
\DeclareOption{nodocument}{%
  \@ecvnodocumenttrue
}

\newif\if@ecvdebug\@ecvdebugfalse
\DeclareOption{debug}{\@ecvdebugtrue}

% Pass all other options (a4paper, 10pt, draft, openbib, etc...) to article
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}%
} 

\ExecuteOptions{english,hrule,totpages} % Default options

\ProcessOptions\relax

\LoadClass{article}
\RequirePackage[utf8]{inputenc}
\RequirePackage{array}
\RequirePackage{fancyhdr} % For page numbering
\RequirePackage{xcolor}
\RequirePackage{url}
\RequirePackage{soul}
\RequirePackage{tabu}
\RequirePackage{setspace}
\RequirePackage{geometry}
\RequirePackage{textcomp} % For copyright symbol
\RequirePackage{enumitem}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{colortbl}
\RequirePackage{graphicx}
\if@ecvdebug \RequirePackage{showframe} \fi
\RequirePackage[T1]{fontenc}
%
% MY CODE
%
\RequirePackage{marvosym}
\RequirePackage{tikz}
\newcommand*{\marvosymbol}[1]{{\fontfamily{mvs}\fontencoding{U}\fontseries{m}\fontshape{n}\selectfont\char#1}}
%\definecolor{color2}{rgb}{0.55,0.55,0.55}% Chose your color here.

\newcommand*{\mobilephonesymbol}   {\textcolor{cyan}{\marvosymbol{72}~}}
\newcommand*{\fixedphonesymbol}    {\textcolor{cyan}{\marvosymbol{84}~}}
\newcommand*{\faxphonesymbol}      {\textcolor{cyan}{\marvosymbol{117}~}}
\newcommand*{\emailsymbol}         {\textcolor{cyan}{\marvosymbol{66}~}}
\newcommand*{\homepagesymbol}      {\textcolor{cyan}{{\Large\marvosymbol{205}}~}}
\newcommand*{\linkedinsocialsymbol}{%
  \protect\raisebox{-0.165em}{%
    \protect\begin{tikzpicture}[x=0.08em, y=0.08em, xscale=0.25, yscale=-0.25, inner sep=0pt, outer sep=0pt]
      \protect\begin{scope}[cm={{0.60,0.0,0.0,0.60,(346.39,123.07)}}]
        \protect\path[fill=cyan]
          (381,202) -- (434,202) .. controls (439,202) and (442,205) ..
          (442,210) -- (442,264) .. controls (442,268) and (439,272) ..
          (434,272) -- (381,272) .. controls (376,272) and (372,268) ..
          (372,264) -- (372,210) .. controls (372,205) and (376,202) ..
          (381,202) -- cycle;
        \protect\begin{scope}[xscale=0.98, yscale=1.02, fill=white]
          \protect\path[fill=white]
            (403,253) -- (403,224) -- (394,224) -- (394,253) --
            cycle(398,211) .. controls (397,211) and (395,212) ..
            (395,213) .. controls (394,213) and (393,215) ..
            (393,216) .. controls (393,217) and (394,218) ..
            (395,219) .. controls (395,220) and (397,220) ..
            (398,220) .. controls (400,220) and (401,220) ..
            (402,219) .. controls (402,218) and (403,217) ..
            (403,216) .. controls (403,215) and (402,213) ..
            (402,213) .. controls (401,212) and (400,211) ..
            (398,211) -- cycle;
          \protect\path[fill=white]
            (410,253) -- (419,253) --
            (419,236) .. controls (419,236) and (419,235) ..
            (419,235) .. controls (419,235) and (419,234) ..
            (419,234) .. controls (419,233) and (420,232) ..
            (421,232) .. controls (422,231) and (423,231) ..
            (424,231) .. controls (425,231) and (427,231) ..
            (427,232) .. controls (428,234) and (428,235) ..
            (428,237) -- (428,253) -- (437,253) --
            (437,236) .. controls (437,232) and (436,228) ..
            (434,226) .. controls (433,224) and (430,223) ..
            (427,223) .. controls (425,223) and (423,224) ..
            (421,225) .. controls (420,226) and (419,227) ..
            (418,228) -- (418,228) -- (417,224) --
            (410,224) .. controls (410,225) and (410,227) ..
            (410,228) .. controls (410,230) and (410,231) ..
            (410,233) -- cycle;
        \protect\end{scope}%
      \protect\end{scope}%
    \protect\end{tikzpicture}}%
  ~}
\newcommand*{\twittersocialsymbol} {%
  \protect\raisebox{0em}{%
    \protect\begin{tikzpicture}[x=0.08em, y=0.08em, xscale=0.005, yscale=-0.005, inner sep=0pt, outer sep=0pt]
      \protect\path[fill=cyan]
        (2000, 192) .. controls (1926, 225) and (1847, 247) ..
        (1764, 257) .. controls (1849, 206) and (1914, 126) ..
        (1945,  30) .. controls (1865,  77) and (1778, 111) ..
        (1684, 130) .. controls (1609,  50) and (1503,   0) ..
        (1385,   0) .. controls (1158,   0) and ( 974, 184) ..
        ( 974, 410) .. controls ( 974, 442) and ( 978, 474) ..
        ( 985, 504) .. controls ( 644, 487) and ( 342, 323) ..
        ( 139,  75) .. controls ( 104, 136) and (  84, 206) ..
        (  84, 281) .. controls (  84, 424) and ( 156, 549) ..
        ( 266, 623) .. controls ( 199, 621) and ( 136, 602) ..
        (  80, 572) .. controls (  80, 573) and (  80, 575) ..
        (  80, 577) .. controls (  80, 776) and ( 222, 941) ..
        ( 409, 979) .. controls ( 375, 988) and ( 339, 993) ..
        ( 301, 993) .. controls ( 275, 993) and ( 249, 991) ..
        ( 224, 986) .. controls ( 276,1149) and ( 428,1268) ..
        ( 607,1271) .. controls ( 467,1381) and ( 290,1447) ..
        (  98,1447) .. controls (  65,1447) and (  32,1445) ..
        (   0,1441) .. controls ( 182,1557) and ( 397,1625) ..
        ( 629,1625) .. controls (1384,1625) and (1796,1000) ..
        (1796, 458) .. controls (1796, 440) and (1796, 422) ..
        (1795, 405) .. controls (1875, 347) and (1945, 275) ..
        (2000, 192);
    \protect\end{tikzpicture}}%
  ~}
\newcommand*{\githubsocialsymbol}  {%
  \protect\raisebox{-0.15em}{%
    \protect\begin{tikzpicture}[x=0.08em, y=0.08em, xscale=0.25, yscale=-0.25, inner sep=0pt, outer sep=0pt]
      \protect\begin{scope}[shift={(507,387)}]
        \protect\path[fill=cyan]
          (117, 60) .. controls (117, 71) and (108, 81) ..
          ( 96, 81) .. controls ( 85, 81) and ( 75, 71) ..
          ( 75, 60) .. controls ( 75, 48) and ( 85, 39) ..
          ( 96, 39) .. controls (108, 39) and (117, 48) ..
          (117, 60) -- cycle;
        \protect\path[cm={{0.88,0.0,0.0,0.88,(11.10,6.89)}}, fill=white]
          (117, 60) .. controls (117, 71) and (108, 81) ..
          ( 96, 81) .. controls ( 85, 81) and ( 75, 71) ..
          ( 75, 60) .. controls ( 75, 48) and ( 85, 39) ..
          ( 96, 39) .. controls (108, 39) and (117, 48) ..
          (117, 60) -- cycle;
        \protect\path[fill=cyan, nonzero rule]
          (103, 45) .. controls (103, 45) and (101, 46) ..
          (101, 47) -- (100, 47) --
          ( 99, 47) .. controls ( 99, 47) and ( 98, 47) ..
          ( 97, 47) .. controls ( 94, 47) and ( 93, 47) ..
          ( 92, 47) -- ( 92, 47) --
          ( 91, 47) .. controls ( 90, 46) and ( 88, 45) ..
          ( 88, 45) .. controls ( 88, 45) and ( 88, 45) ..
          ( 87, 45) .. controls ( 87, 45) and ( 87, 45) ..
          ( 87, 45) .. controls ( 86, 46) and ( 86, 48) ..
          ( 86, 49) -- ( 87, 50) --
          ( 86, 51) .. controls ( 85, 51) and ( 85, 52) ..
          ( 85, 53) .. controls ( 85, 54) and ( 85, 57) ..
          ( 85, 58) .. controls ( 85, 58) and ( 85, 58) ..
          ( 82, 59) .. controls ( 79, 59) and ( 77, 59) ..
          ( 77, 59) .. controls ( 77, 59) and ( 77, 59) ..
          ( 78, 59) .. controls ( 80, 59) and ( 83, 59) ..
          ( 85, 59) .. controls ( 85, 59) and ( 85, 59) ..
          ( 85, 59) .. controls ( 86, 59) and ( 86, 59) ..
          ( 86, 59) .. controls ( 86, 59) and ( 85, 59) ..
          ( 84, 59) .. controls ( 82, 60) and ( 80, 60) ..
          ( 79, 60) .. controls ( 78, 61) and ( 77, 61) ..
          ( 77, 61) .. controls ( 77, 61) and ( 78, 61) ..
          ( 79, 61) .. controls ( 81, 60) and ( 83, 60) ..
          ( 85, 60) .. controls ( 86, 60) and ( 86, 60) ..
          ( 86, 60) .. controls ( 86, 60) and ( 87, 61) ..
          ( 88, 62) .. controls ( 89, 63) and ( 90, 63) ..
          ( 92, 63) .. controls ( 92, 63) and ( 93, 64) ..
          ( 93, 64) .. controls ( 93, 64) and ( 93, 64) ..
          ( 93, 64) .. controls ( 92, 64) and ( 92, 65) ..
          ( 92, 65) .. controls ( 92, 66) and ( 90, 66) ..
          ( 89, 66) .. controls ( 88, 66) and ( 88, 66) ..
          ( 87, 65) .. controls ( 87, 64) and ( 86, 63) ..
          ( 86, 63) .. controls ( 85, 63) and ( 84, 63) ..
          ( 84, 63) .. controls ( 84, 63) and ( 84, 63) ..
          ( 84, 63) .. controls ( 85, 64) and ( 86, 65) ..
          ( 86, 66) .. controls ( 87, 67) and ( 87, 68) ..
          ( 88, 68) .. controls ( 89, 68) and ( 89, 68) ..
          ( 90, 68) -- ( 92, 68) -- ( 92, 70) -- ( 92, 72) --
          ( 91, 72) .. controls ( 91, 72) and ( 91, 73) ..
          ( 91, 73) .. controls ( 90, 73) and ( 90, 73) ..
          ( 91, 73) .. controls ( 92, 73) and ( 92, 73) ..
          ( 92, 73) .. controls ( 93, 73) and ( 93, 73) ..
          ( 93, 70) .. controls ( 93, 67) and ( 93, 67) ..
          ( 94, 66) -- ( 94, 66) --
          ( 94, 69) .. controls ( 94, 71) and ( 94, 73) ..
          ( 94, 73) .. controls ( 94, 73) and ( 94, 73) ..
          ( 93, 74) .. controls ( 93, 74) and ( 93, 74) ..
          ( 93, 74) .. controls ( 93, 74) and ( 93, 74) ..
          ( 94, 74) .. controls ( 94, 74) and ( 95, 74) ..
          ( 96, 73) .. controls ( 96, 72) and ( 96, 71) ..
          ( 96, 68) -- ( 96, 66) -- ( 96, 66) --
          ( 96, 69) .. controls ( 96, 72) and ( 96, 72) ..
          ( 97, 73) .. controls ( 97, 74) and ( 99, 74) ..
          ( 99, 74) .. controls ( 99, 74) and ( 99, 74) ..
          ( 99, 73) .. controls ( 99, 73) and ( 98, 73) ..
          ( 98, 72) .. controls ( 98, 72) and ( 98, 66) ..
          ( 98, 66) .. controls ( 98, 66) and ( 99, 66) ..
          ( 99, 66) .. controls ( 99, 67) and ( 99, 67) ..
          ( 99, 69) .. controls ( 99, 71) and ( 99, 72) ..
          ( 99, 72) .. controls ( 99, 73) and (100, 73) ..
          (100, 73) .. controls (101, 73) and (101, 73) ..
          (101, 73) .. controls (102, 73) and (102, 73) ..
          (102, 73) .. controls (101, 72) and (101, 72) ..
          (101, 69) .. controls (101, 66) and (101, 65) ..
          (100, 65) .. controls (100, 64) and (100, 64) ..
          (100, 64) -- ( 99, 64) --
          (100, 63) .. controls (101, 63) and (102, 63) ..
          (103, 63) .. controls (104, 62) and (106, 61) ..
          (106, 60) -- (106, 60) --
          (107, 60) .. controls (109, 60) and (113, 60) ..
          (115, 61) .. controls (115, 61) and (115, 61) ..
          (115, 61) .. controls (115, 60) and (111, 60) ..
          (108, 59) .. controls (107, 59) and (107, 59) ..
          (107, 59) .. controls (107, 59) and (107, 59) ..
          (107, 59) -- (107, 59) --
          (108, 59) .. controls (110, 59) and (112, 59) ..
          (114, 59) .. controls (115, 59) and (115, 59) ..
          (115, 59) .. controls (115, 59) and (112, 59) ..
          (109, 59) .. controls (108, 58) and (107, 58) ..
          (107, 58) .. controls (107, 58) and (107, 58) ..
          (107, 58) .. controls (107, 57) and (107, 56) ..
          (107, 55) .. controls (107, 53) and (107, 53) ..
          (107, 53) .. controls (107, 52) and (106, 51) ..
          (106, 50) -- (105, 50) --
          (105, 48) .. controls (105, 47) and (105, 46) ..
          (105, 46) -- (105, 45) --
          (104, 45) .. controls (104, 45) and (104, 45) ..
          (103, 45) -- cycle;
      \protect\end{scope}%
    \protect\end{tikzpicture}}%
  ~}

\newcommand*{\skypesymbol} {%
  \protect\raisebox{-0.085em}{%
\protect\begin{tikzpicture}[y=0.08em,x=0.08em,xscale=0.022,yscale=-0.022, inner sep=0pt, outer sep=0pt]
\protect\path[fill=cyan,even odd rule] (487.6550,288.9690) .. controls (489.0610,278.5690) and
  (489.8700,267.9960) .. (489.8700,257.2330) .. controls (489.8700,128.0770) and
  (384.5990,23.3610) .. (254.7670,23.3610) .. controls (241.8630,23.3610) and
  (229.2120,24.4210) .. (216.9010,26.4410) .. controls (194.8280,12.0570) and
  (168.5590,3.6740) .. (140.2880,3.6740) .. controls (62.7660,3.6740) and
  (0.0000,66.4820) .. (0.0000,143.9800) .. controls (0.0000,172.1780) and
  (8.2990,198.3740) .. (22.5900,220.3690) .. controls (20.6650,232.3860) and
  (19.6810,244.6920) .. (19.6810,257.2290) .. controls (19.6810,386.4050) and
  (124.8980,491.1100) .. (254.7660,491.1100) .. controls (269.4230,491.1100) and
  (283.6930,489.6840) .. (297.5620,487.1780) .. controls (319.1120,500.5470) and
  (344.4960,508.3260) .. (371.7080,508.3260) .. controls (449.2100,508.3260) and
  (512.0010,445.5020) .. (512.0010,368.0120) .. controls (511.9980,338.7190) and
  (503.0410,311.4840) .. (487.6550,288.9690) -- cycle(276.7400,429.5960) ..
  controls (202.0340,433.4870) and (167.0750,416.9590) .. (135.0500,386.9050) ..
  controls (99.2850,353.3370) and (113.6520,315.0500) .. (142.7900,313.1040) ..
  controls (171.9120,311.1590) and (189.3980,346.1160) .. (204.9410,355.8400) ..
  controls (220.4650,365.5280) and (279.5340,387.6000) .. (310.7350,351.9320) ..
  controls (344.7100,313.1040) and (288.1410,293.0120) .. (246.6760,286.9300) ..
  controls (187.4730,278.1640) and (112.7260,246.1370) .. (118.5410,183.0230) ..
  controls (124.3580,119.9490) and (172.1230,87.6090) .. (222.3910,83.0470) ..
  controls (286.4680,77.2300) and (328.1820,92.7540) .. (361.1760,120.9070) ..
  controls (399.3270,153.4360) and (378.6840,189.8010) .. (354.3770,192.7270) ..
  controls (330.1660,195.6360) and (302.9730,139.2230) .. (249.5860,138.3750) ..
  controls (194.5590,137.5110) and (157.3690,195.6360) .. (225.3000,212.1590) ..
  controls (293.2660,228.6640) and (366.0500,235.4450) .. (392.2610,297.5760) ..
  controls (418.4900,359.7130) and (351.5070,425.7010) .. (276.7400,429.5960) --
  cycle;
\protect\end{tikzpicture}}%
  ~}

\newcommand{\addresssymbol}{\tikz{
    \filldraw [rounded corners=0.9ex,cyan] (0,0)
        .. controls (-.05em,.2ex) and (-.3em,1.2ex)
        .. (0em,2.2ex) .. controls (.3em,1.2ex) and (.05em,.2ex) .. (0,0);
    \draw [cyan,fill=white](0,1.15ex) circle (0.12em);
}}
%
% MY CODE
%

\def\ecv@totpages{}
\newcommand*{\ecvpage}[1]{\def\ecv@page{#1}}
\ecvpage{\ecv@pagekey~\thepage\ecv@totpages}

\def\ecv@lfoot{%
  \footnotesize{\@date}
}

% Right Footnote to be shown on every page
\newcommand\ecvfootnote[1]{\def\ecv@cfoot{#1}}
\ecvfootnote{\textcopyright~\ecv@europeanunionkey, 2002-\the\year\ | http://europass.cedefop.europa.eu }


\AtBeginDocument{%
% Ensure that \ecv@leftcolwidth and \ecv@rightcolwidth
% are correctly defined
\ecvLeftColumnWidth{50mm}
\ecvColSep{10pt}

% Set layout

\if@ecvnodocument\else
    \newgeometry{body={18.5cm,24cm}, vratio={4:3}}
\fancyfoot{}
\fancyfoot[L]{\begin{minipage}{\ecv@leftcolwidth}
\begin{flushleft}
\footnotesize\textcolor{ecvhighlightcolor}{\fontfamily{phv}\fontseries{m}\selectfont\ecv@lfoot}\end{flushleft}
\end{minipage}\hspace*{\ecv@colsep}\footnotesize\textcolor{ecvhighlightcolor}{\fontfamily{phv}\fontseries{m}\selectfont\ecv@cfoot}
}

\fancyfoot[R]{\begin{minipage}{\ecv@rightcolwidth}
\begin{flushright}
\footnotesize\textcolor{ecvhighlightcolor}{\fontfamily{phv}\fontseries{m}\selectfont\ecv@page}\end{flushright}
\end{minipage}}

\fancypagestyle{ecvfancy}{
\setlength{\headheight}{13.5pt}
% \setlength{\footskip}{8.4pt}
\fancyhead{}
 
\fancyhead[R]{
\raggedleft \fontfamily{phv}\fontseries{m}\selectfont \textcolor{ecvhighlightcolor}{\ecv@name}
}

\fancyhead[L]{
\noindent
\begin{minipage}{0.5\textwidth}
\noindent\makebox[\ecv@leftcolwidth][l]{\noindent\raisebox{-0.68\height}[0pt][0pt]{\if@ecvlogo\includegraphics[width=0.6\ecv@logowidth]{europasslogo2013.pdf}\fi}}
\hspace*{\ecv@leftcolwidth}\hspace*{\ecv@colsep}\noindent
\raisebox{\dp\strutbox}{\ecvcoloredtitle}
\end{minipage}
}
}

\fancypagestyle{first}{
\fancyhead[R]{}
\fancyhead[L]{
\noindent
\begin{minipage}{0.5\textwidth}
\noindent\makebox[\ecv@leftcolwidth][l]{\noindent\raisebox{-0.52\height}[0pt][0pt]{\if@ecvlogo\includegraphics[width=\ecv@logowidth]{europasslogo2013.pdf}\fi}}
\hspace*{\ecv@leftcolwidth}\hspace*{\ecv@colsep}\noindent
\raisebox{\dp\strutbox}{\ecvcoloredtitle}
\end{minipage}
}
}

\thispagestyle{first}
\pagestyle{ecvfancy}
\renewcommand{\headrulewidth}{0pt}%
\fi % End \if@ecvnodocument
} % End \AtBeginDocument

% Thanks to Roman Bertle for suggesting the following:
\renewcommand{\labelitemi}{\normalfont\bfseries \textendash}
\renewcommand{\labelitemii}{\textasteriskcentered}
\renewcommand{\labelitemiii}{\textperiodcentered}

\newcommand*{\ecvfirstname}[1]{\def\ecv@firstname{#1}} % Deprecated
\newcommand*{\ecvlastname}[1]{\def\ecv@lastname{#1}} % Deprecated
\newcommand*{\ecvname}[1]{\def\ecv@name{#1}} % Replaces the above
\newcommand*{\ecvfootername}[1]{\def\ecv@footername{#1}}
\newcommand*{\ecvaddress}[1]{\def\ecv@address{#1}}
%\newcommand*{\ecvtelephone}[2][]{\def\ecv@telephone{#2}\def\ecv@mobile{#1}}
\newcommand*{\ecvfax}[1]{\def\ecv@fax{#1}}
\newcommand*{\ecvemail}[1]{\def\ecv@email{#1}}
\newcommand*{\ecvhomepage}[1]{\def\ecv@homepage{#1}}
% MY CODE
\newcommand*{\ecvtelephone}[1]{\def\ecv@telephone{#1}}
\newcommand*{\ecvmobile}[1]{\def\ecv@mobile{#1}}
\newcommand*{\ecvlinkedin}[1]{\def\ecv@linkedin{#1}}
\newcommand*{\ecvgithub}[1]{\def\ecv@github{#1}}
\newcommand*{\ecvtwitter}[1]{\def\ecv@twitter{#1}}
\newcommand*{\ecvskype}[1]{\def\ecv@skype{#1}}
% MY CODE

\def\ecv@im{}
\newif\if@ecvIMalreadyprovided\@ecvIMalreadyprovidedfalse
\newcommand*{\ecvim}[2]{\if@ecvIMalreadyprovided \g@addto@macro\ecv@im{\quad} \fi \g@addto@macro\ecv@im{\ecvhighlight{#1} #2} \@ecvIMalreadyprovidedtrue}
\newif\if@ecvpiextrafields\@ecvpiextrafieldsfalse
\newcommand*{\ecvnationality}[1]{\def\ecv@nationality{#1}\@ecvpiextrafieldstrue}
\newcommand*{\ecvdateofbirth}[1]{\def\ecv@birth{#1}\@ecvpiextrafieldstrue}
\newcommand*{\ecvgender}[1]{\def\ecv@gender{#1}\@ecvpiextrafieldstrue}
% Personal picture
\newcommand*{\ecvdrawpicture}{}
\newcommand*{\ecvbeforepicture}[1]{\def\ecv@beforepic{#1}}
\newcommand*{\ecvafterpicture}[1]{\def\ecv@afterpic{#1}}
\newif\if@ecvpicture\@ecvpicturefalse
\newcommand*\ecvpicture{%\@e
\@ifnextchar[\ecv@picture{\ecv@picture[]}}
\def\ecv@picture[#1]#2{%
\def\ecvarg{#2}
\ifx\@empty\ecvarg\renewcommand*{\ecvdrawpicture}{}\else
\renewcommand*{\ecvdrawpicture}{\includegraphics[#1]{#2}}
\@ecvpicturetrue
\fi}
% The following must be used inside \ecvbeforepicture
% or \ecvafterpicture
\newcommand*{\ecvspace}[1]{\vspace{#1}}
\ecvbeforepicture{\raggedleft}
%\ecvafterpicture{0pt}
\ecvafterpicture{}
\ecvfirstname{}
\ecvlastname{}
\ecvname{\ecv@lastname\ \ecv@firstname}
\ecvfootername{\ecv@name}
\ecvaddress{}
\ecvtelephone{}
\ecvfax{}
\ecvemail{}
\ecvhomepage{}
% MY CODE
\ecvmobile{}
\ecvlinkedin{}
\ecvgithub{}
\ecvtwitter{}
\ecvskype{}
% MY CODE
\ecvnationality{}
\ecvdateofbirth{}
\ecvgender{}
\ecvpicture{}


\newif\if@ecvpineedspipe\@ecvpineedspipefalse
\providecommand{\ecvpersonalinfo}[1][0pt]{%
%\ecvitem[#1]{\ecvsectionstyle{\ecv@infosectionkey}}{
\ecvitem[#1]{\ecvsectionstyle{\ecv@infosectionkey}\qquad \ecvdrawpicture}{
\begin{doublespacing}
%\begin{tabular}[t]{@{}p{\if@ecvpicture 0.75\ecv@rightcolwidth \else \ecv@rightcolwidth\fi}@{}p{\if@ecvpicture 0.3\ecv@rightcolwidth \else 0pt\fi}@{}}
%
% MY CODE
%
\begin{tabular}[t]{@{}p{\ecv@rightcolwidth}@{}p{0pt}@{}}
%
% MYCODE
%
\raggedright
{\ecvLargenormalstyle{\ecv@name}} \newline
\ifx\@empty\ecv@address\else
    %\raisebox{-2\lineskip}{\includegraphics[width=0.4cm]{address_europass_icon.pdf}}\hspace{0.2mm} {\fontseries{m}\selectfont \ecv@address} \newline
    \raisebox{-2\lineskip}\addresssymbol\enskip {\fontseries{m}\selectfont \ecv@address} \newline
\fi
\ifx\@empty\ecv@mobile
  \ifx\@empty\ecv@telephone\else
      %\raisebox{-2\lineskip}{\includegraphics[width=0.4cm]{telephone_europass_icon.pdf}}\hspace{0.2mm} {\fontseries{m}\selectfont \ecv@telephone} \newline
      \raisebox{-2\lineskip}\fixedphonesymbol\enskip {\fontseries{m}\selectfont \ecv@telephone} \newline
  \fi
\else
  %\raisebox{-2\lineskip}{\includegraphics[width=0.4cm]{mobile_europass_icon.pdf}}\hspace{0.2mm} {\fontseries{m}\selectfont \ecv@mobile} \quad \ifx\@empty\ecv@telephone\else  \raisebox{-2\lineskip}{\includegraphics[width=0.4cm]{telephone_europass_icon.pdf}}\hspace{0.2mm} {\fontseries{m}\selectfont \ecv@telephone\ \newline}\fi
  \raisebox{-2\lineskip}\mobilephonesymbol\enskip {\fontseries{m}\selectfont \ecv@mobile} \quad \ifx\@empty\ecv@telephone\newline\else  \raisebox{-2\lineskip}\fixedphonesymbol\enskip {\fontseries{m}\selectfont \ecv@telephone\ \newline} \fi
\fi
\ifx\@empty\ecv@fax\else
    \ecv@faxkey \ecv@fax 
\fi
\ifx\@empty\ecv@email\else
    %\raisebox{-2\lineskip}{\includegraphics[width=0.4cm]{mail_europass_icon.pdf}}\hspace{0.2mm} {\fontseries{m}\selectfont \setul{.5pt}{.4pt}\href{mailto:\ecv@email}{\ul{\mbox{\ecv@email}}}} \newline
    \raisebox{-2\lineskip}\emailsymbol\enskip {\fontseries{m}\selectfont \setul{2pt}{.4pt}\href{mailto:\ecv@email}{\ul{\mbox{\ecv@email}}}} \newline
\fi
\ifx\@empty\ecv@homepage\else
    %\raisebox{-2\lineskip}{\includegraphics[width=0.4cm]{website_europass_icon.pdf}}\hspace{0.2mm} {\fontseries{m}\selectfont \setul{.5pt}{.4pt}\href{\ecv@homepage}{\ul{\mbox{\ecv@homepage}}}} \newline
    \raisebox{-2\lineskip}\homepagesymbol\enskip {\fontseries{m}\selectfont \setul{2pt}{.4pt}\ul{\mbox{\ecv@homepage}}} \newline
\fi
\ifx\@empty\ecv@linkedin\else
    \raisebox{-2\lineskip}\linkedinsocialsymbol \enskip{\fontseries{m}\selectfont \setul{2pt}{.4pt}\ul{\mbox{\ecv@linkedin}}} \newline
\fi
\ifx\@empty\ecv@im\else
    \raisebox{-2\lineskip}{\includegraphics[width=0.4cm]{im_europass_icon.pdf}} \hspace{0.2mm}{\fontseries{m}\selectfont \ecv@im} \newline
\fi
\ifx\@empty\ecv@skype\else
%$\begin{array}{@{}l}\includegraphics[width=\ecv@iconwidth]{ic_linkedin}\end{array}$\ecv@linkedin\par\vspace{10pt}
\skypesymbol\enskip\setul{2pt}{.4pt}\ul{\mbox{\ecv@skype}}
\ifx\@empty\ecv@twitter\else\quad\twittersocialsymbol\enskip\setul{2pt}{.4pt}\ul{\mbox{\ecv@twitter}}\fi
\ifx\@empty\ecv@github\else\quad\githubsocialsymbol\enskip\setul{2pt}{.4pt}\ul{\mbox{\ecv@github}}\fi
%\par\vspace{5pt}
\fi

  \ifx\@empty\ecv@gender\else
      \if@ecvpineedspipe\else \hspace*{-0.5ex}\fi
      \fontseries{m}\selectfont \ecvhighlight{~\if@ecvpineedspipe | \fi \ecv@genderkey} \ecv@gender \@ecvpineedspipetrue
  \fi
  \ifx\@empty\ecv@birth\else
      \if@ecvpineedspipe\else \hspace*{-0.5ex}\fi
      \fontseries{m}\selectfont \ecvhighlight{~\if@ecvpineedspipe | \fi\ecv@birthkey} \ecv@birth \@ecvpineedspipetrue
  \fi
  \ifx\@empty\ecv@nationality\else
      \if@ecvpineedspipe\else \hspace*{-0.5ex}\fi
      \fontseries{m}\selectfont \ecvhighlight{~\if@ecvpineedspipe | \fi \ecv@nationalitykey}~\ecv@nationality \@ecvpineedspipetrue
  \fi
  \if@ecvpicture
      \ifx\@empty\ecv@nationality\else
	    \ifx\@empty\ecv@gender\else
		\ifx\@empty\ecv@birth\else
		    \linebreak
		    \@ecvpineedspipefalse
		\fi
	    \fi
      \fi
  \fi
%  \ifx\@empty\ecv@nationality\else
%      \if@ecvpineedspipe\else \hspace*{-0.5ex}\fi
%      \fontseries{m}\selectfont \ecvhighlight{~\if@ecvpineedspipe | \fi \ecv@nationalitykey}~\ecv@nationality \@ecvpineedspipetrue
%  \fi
& 
\Large \vspace{-\baselineskip}
%\raisebox{-\height}{\ecvdrawpicture}
\end{tabular}
\end{doublespacing}
}
\ecvspace{\ecv@afterpic}
}

% Spoken language information
\newcommand*\ecvmothertongue[2][0pt]{%
\ecvblueitem[#1]{\ecv@mothertonguekey}{#2}
}

\newlength\ecv@langparwidth
\newlength\ecv@langtablewidth %excluding vertical rules
\newlength\ecv@langouterborderwidth
\newlength\ecv@langinnerborderwidth

\setlength{\ecv@langouterborderwidth}{0.04cm}
\setlength{\ecv@langinnerborderwidth}{0.02cm}


\newif\if@ecvfirstlangrow\@ecvfirstlangrowfalse

\providecommand{\ecvlanguageheader}[1][0pt]{%
  \setlength{\arrayrulewidth}{\ecv@langouterborderwidth}
  \ecvblueitem{\ecv@otherlanguageskey}{
    \renewcommand{\arraystretch}{1.5}
    \setlength{\ecv@langtablewidth}{\ecv@rightcolwidth}
    \addtolength{\ecv@langtablewidth}{-4\arrayrulewidth}
    \arrayrulecolor{ecvtablebordercolor}
    \begin{tabular}[t]{p{\ecv@langcola\ecv@langtablewidth}|p{\ecv@langcolb\ecv@langtablewidth}|p{\ecv@langcolc\ecv@langtablewidth}|p{\ecv@langcold\ecv@langtablewidth}|p{\ecv@langcole\ecv@langtablewidth}}
      \firsthline
      \multicolumn{2}{c|}{\ecvsectionstyle{\ecv@understandkey}} & \multicolumn{2}{c|}{\ecvsectionstyle{\ecv@speakkey}} & \centering \ecvsectionstyle{\ecv@writekey}\tabularnewline
      \hline
      \centering \ecvbluestyle{\ecv@listenkey}& \centering \ecvbluestyle{\ecv@readkey} &\centering \ecvbluestyle{\ecv@interactkey}& \centering
      \ecvbluestyle{\ecv@productkey}&\tabularnewline
      \hline
    \end{tabular}
  }
  \@ecvfirstlangrowtrue
}
  
  
\newcommand*\ecvlangrow[8][-\dp\strutbox]{
  \vspace*{-\dp\strutbox}
  \setlength{\arrayrulewidth}{#8}
  \ecvitem[#1]{\raisebox{\if@ecvfirstlangrow -\arrayrulewidth \else -0.5\arrayrulewidth \fi}{#2}}{
    \setlength{\ecv@langtablewidth}{\ecv@rightcolwidth}
    \addtolength{\ecv@langtablewidth}{-4\arrayrulewidth}
    \arrayrulecolor{ecvtablebordercolor}
    \renewcommand{\arraystretch}{1.8}
    \begin{tabular}[t]{p{\ecv@langcola\ecv@rightcolwidth}p{\ecv@langcolb\ecv@rightcolwidth}p{\ecv@langcolc\ecv@rightcolwidth}p{\ecv@langcold\ecv@rightcolwidth}p{\ecv@langcole\ecv@rightcolwidth}}
      \centering{\raisebox{-\arrayrulewidth}{#3}} &\centering{\raisebox{-\arrayrulewidth}{#4}} &\centering{\raisebox{-\arrayrulewidth}{#5}} &\centering{\raisebox{-\arrayrulewidth}{#6}} &\centering{\raisebox{-\arrayrulewidth}{#7}} \tabularnewline
      \hline
    \end{tabular}
  }
  \@ecvfirstlangrowfalse
}

\newcommand*\ecvlanguage[7][0pt]{\ecvlangrow[#1]{#2}{#3}{#4}{#5}{#6}{#7}{\ecv@langinnerborderwidth}}
\newcommand*\ecvlastlanguage[7][0pt]{\ecvlangrow[#1]{#2}{#3}{#4}{#5}{#6}{#7}{\ecv@langouterborderwidth}}

\newcommand*{\ecvlanguagefooter}[1][0pt]{
\nopagebreak[4]
\ecvitem[0.5\dp\strutbox]{}{\textcolor{ecvsectioncolor}{\ecv@langshortdesckey}}
\nopagebreak[4]
% \vspace*{-0.5\dp\strutbox}
\ecvitem[-0.5\dp\strutbox]{}{\setulcolor{ecvlanglinkcolor}\setul{.5pt}{.4pt}\href{\ecv@langlinkkey}{\ul{\mbox{\textcolor{ecvlanglinkcolor}{\ecv@langfooterkey}}}}}
\renewcommand{\arraystretch}{0}
}

% See the Common European Framework of Reference for Languages:
% http://www.coe.int/T/E/Cultural_Co-operation/education/Languages/Language_Policy/Common_Framework_of_Reference/default.asp
\newcommand*\ecvCEF[2]{%
%   \setlength\tabcolsep{1mm}

% \begin{tabular}{@{}>{}m{.2\ecv@langparwidth}@{\hspace{1mm}}>{\centering}m{.74\ecv@langparwidth}@{}}
% #1 & \small{#2}\tabularnewline
% \end{tabular}
}

\newcommand*\ecvAOne{A1}
\newcommand*\ecvATwo{A2}
\newcommand*\ecvBOne{B1}
\newcommand*\ecvBTwo{B2}
\newcommand*\ecvCOne{C1}
\newcommand*\ecvCTwo{C2}

\def\ecv@kern{\kern0.5pt}
%\def\ecv@kern{}
\newcommand*{\ecvTitleKern}[1]{\def\ecv@kern{\kern#1}}
\newlength\ecv@rulewidth
\newlength\ecv@colsep
\newlength\ecv@leftcolwidth
\newlength\ecv@rightcolwidth
\newlength\ecv@extrarowheight
\newlength\ecv@leftboxwidth
\newlength\ecv@rightboxwidth
\newcommand*{\ecvRuleWidth}[1]{\setlength\ecv@rulewidth{#1}}
\newcommand*{\ecvColSep}[1]{%
  \setlength\ecv@colsep{#1}
  \addtolength{\ecv@rightcolwidth}{-\ecv@colsep}
  \addtolength{\ecv@rightboxwidth}{-\ecv@colsep}
  }
\newcommand*{\ecvLeftColumnWidth}[1]{\setlength\ecv@leftcolwidth{#1}%
             \setlength{\ecv@rightcolwidth}{\textwidth}
            \addtolength{\ecv@rightcolwidth}{-\ecv@leftcolwidth}
            \addtolength{\ecv@rightcolwidth}{-\ecv@rulewidth}
	    \setlength{\ecv@rightboxwidth}{\ecv@rightcolwidth}
	    \setlength{\ecv@leftboxwidth}{\ecv@leftcolwidth}
}
\newcommand*{\ecvExtraRowHeight}[1]{\setlength\ecv@extrarowheight{#1}}
\newcommand*{\ecvNoHorRule}{\def\ecv@hrule{}}
\newcommand*{\ecvWithHorRule}{\def\ecv@hrule{\cline{1-1}}}

% Initialization
\ecvRuleWidth{\arrayrulewidth}
\setlength\ecv@leftcolwidth{50mm} % Default left column width
\ecvExtraRowHeight{0pt}
\ecvWithHorRule

% Logo size
\newlength\ecv@logowidth
\newlength\ecv@logooffset
\newcommand*{\ecvLogoWidth}[1]{\setlength\ecv@logowidth{#1}}
\newcommand*{\ecvLogoOffset}[1]{\setlength\ecv@logooffset{#1}}
\ecvLogoWidth{4.487cm}
\ecvLogoOffset{0.8cm}%\typeout{logo width=\the\ecv@logowidth}
%\typeout{logo offset=\the\ecv@logooffset}

% Text bullet
\newcommand{\ecvbullet}{\raisebox{.35ex}[0cm][0cm]{\tiny\textbullet}}
                                          
\newenvironment{europasscv}{%
  \ecvLeftColumnWidth{\ecv@leftcolwidth}
  \ecvColSep{\ecv@colsep}
  \renewcommand{\tabcolsep}{0pt}
  \setlength\parindent{0pt}
  \setlength\arrayrulewidth{\ecv@rulewidth}
  \setlength{\arrayrulewidth}{0pt}
  % Language table paragraph width
  \setlength\ecv@langparwidth{.199\ecv@rightcolwidth}
  \addtolength{\ecv@langparwidth}{-2\tabcolsep}
  \addtolength{\ecv@langparwidth}{-2\arrayrulewidth}

\fontfamily{phv} \ifx\@empty\ecv@narrow \fontseries{mc} \else \fontseries{m} \fi
\if@ecvbigfont\else \fontsize{9}{10.8} \fi \selectfont

\setlength\baselineskip{0pt}
\color{\ecv@textcolor}
}

\newenvironment{ecvitemize}{
\
\vspace*{\ecv@itemizeskip}
\begin{itemize}[leftmargin=*,nolistsep,nosep,topsep=0pt]
}{
\end{itemize}
\ \vspace{-0.8\baselineskip}
}


% styles
\newcommand{\ecvsectionstyle}[1]{\textcolor{ecvsectioncolor}{\fontfamily{phv}\fontseries{m}\selectfont \MakeUppercase{\expandafter{#1}}}}
\newcommand{\ecvbluenormalstyle}[1]{\fontfamily{phv}\fontseries{m}\selectfont\textcolor{ecvsectioncolor}{#1}}
\newcommand{\ecvtitlestyle}[1]{\large{\ecvbluenormalstyle{#1}}}
\newcommand{\ecvlargenormalstyle}[1]{\large \fontfamily{phv}\fontseries{m}\selectfont #1}
\newcommand{\ecvLargenormalstyle}[1]{\Large \fontfamily{phv}\fontseries{m}\selectfont #1}
\newcommand{\ecvhighlight}[1]{\textcolor{ecvhighlightcolor}{#1}}
\newcommand{\ecvbluestyle}[1]{\textcolor{ecvsectioncolor}{#1}}


% sectioning commands
\newif\if@ecvitemskip\@ecvitemskipfalse
\newlength{\ecv@itemskip}
\newlength{\ecv@itemizeskip}
\setlength\ecv@itemskip{2.8pt}

\newlength{\ecv@currentskip}

\newif\if@ecvlastitemwassection\@ecvlastitemwassectionfalse
\newif\if@ecvitemcommand\@ecvitemcommandtrue

\newcommand{\ecv@secondarg}{}
\newcommand{\ecv@thirdarg}{}


\newcolumntype{P}[1]{>{%
  \setlength{\parskip}{\ecv@itemskip}
  \setlength{\baselineskip}{1.5\ht\strutbox}
  }p{#1}
}
\newcommand\ecvitem[3][\ecv@itemskip]{%
  \if@ecvdebug
    \renewcommand{\ecv@secondarg}{#2}
    \renewcommand{\ecv@thirdarg}{#3}
    \message{^^J==================^^J}
    \message{[europasscv] typesetting ^^J}
    \message{[europasscv] \meaning\ecv@secondarg^^J}
    \message{[europasscv] \meaning\ecv@thirdarg^^J}
    \message{[europasscv] ecvitemskip = \if@ecvitemskip true, skipping \the\ecv@currentskip \else false\fi}
  \fi

  \if@ecvitemskip
    \setlength{\ecv@currentskip}{#1}
    \vspace{\ecv@currentskip}
  \fi

  \if@ecvitemcommand
    \if@ecvlastitemwassection
      \vspace{\smallskipamount}
    \fi
  \fi

  \setlength\ecv@itemizeskip{-\ht\strutbox}\addtolength{\ecv@itemizeskip}{-2\dp\strutbox}

  \begin{tabular}{@{}p{\ecv@leftcolwidth}@{\extracolsep{\ecv@colsep}}P{\ecv@rightcolwidth}@{}}
  \if@ecvdebug\cellcolor{yellow!25}\fi \raggedleft #2 & \if@ecvdebug\cellcolor{blue!25}\fi #3
  \end{tabular}
  \@ecvitemskiptrue
  \@ecvlastitemwassectionfalse
  \@ecvitemcommandtrue
} 

\newlength{\ecv@sectionrulelength}

\newcommand{\ecvsection}[2][1.3\bigskipamount]{%
  \@ecvitemcommandfalse
  \setlength{\ecv@sectionrulelength}{\ecv@rightcolwidth}
  \addtolength{\ecv@sectionrulelength}{-7pt}
  \ecvitem[#1]{\ecvsectionstyle{#2}}
              {\textcolor{ecvrulecolor}{\noindent\rule{\ecv@sectionrulelength}{1pt}\rule{7pt}{8pt}}}
  \nopagebreak
  \@ecvitemskipfalse
  \@ecvlastitemwassectiontrue
  \vspace*{\medskipamount}
}

\newcommand\ecvtitle[3][\if@ecvitemskip 1.3\bigskipamount \else 0pt \fi]{%
  \@ecvitemcommandfalse
  \ecvitem[#1]{\small \ecvbluenormalstyle{#2}}{\ecvtitlestyle{#3}}
}

\newcommand{\ecvtitlelevel}[4][\if@ecvitemskip 1.3\bigskipamount \else 0pt \fi]{\ecvtitle[#1]{#2}{
  \begin{tabular}[t]{@{}p{0.8\ecv@rightcolwidth}@{}p{0.2\ecv@rightcolwidth}@{}}
   #3 & \if@ecvdebug\cellcolor{green!25}\fi \raggedleft \ecvhighlight{\small #4}
  \end{tabular} \nolinebreak[4]
}
}

\newcommand\ecvblueitem[3][\if@ecvitemskip 1.3\bigskipamount\else 0pt \fi]{\ecvitem[#1]{\textcolor{ecvsectioncolor}{#2}}{
% \setlength\ecv@itemizeskip{-1.3\bigskipamount}\addtolength{\ecv@itemizeskip}{0.5\dp\strutbox}
 #3}
}

\newcommand{\ecvbigitem}[3][\bigskipamount]{
  \ecvitem[#1]{\ecvsectionstyle{#2}}{\ecvlargenormalstyle{#3}}
  \vspace{\bigskipamount}
  \@ecvitemskipfalse
}

\ecvRuleWidth{0pt}

% colors
\definecolor{ecvrulecolor}{HTML}{398dc9}
\definecolor{ecvsectioncolor}{HTML}{0e4194}
\definecolor{ecvhighlightcolor}{HTML}{1593cb}
\definecolor{ecvtablebordercolor}{HTML}{c6c6c6}
\definecolor{ecvlanglinkcolor}{HTML}{000080}
\definecolor{ecvtextcolor}{HTML}{3e3a38}

%%
%% Customizações do abnTeX2 (http://abnTeX2.googlecode.com) para o Departamento de
%% Computação da Universidade Estadual de Londrina
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is Daniel dos Santos Kaster, dskaster@uel.br
%%
%% Further information about abnTeX2 are available on http://abntex2.googlecode.com/
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dc-uel}[2013/07/10 v1.0 Modelo da Departamento de Computação da UEL baseado em abnTeX2]

\providecommand{\DCUEListcc}{false}
\DeclareOption{tcc}{
	\renewcommand{\DCUEListcc}{true}
}

\providecommand{\DCUELisqualificacaoms}{false}
\DeclareOption{qualificacaoms}{
	\renewcommand{\DCUELisqualificacaoms}{true}
}

\providecommand{\DCUELisdissertacao}{false}
\DeclareOption{dissertacao}{
	\renewcommand{\DCUELisdissertacao}{true}
}

% Passa parâmetros do template DC para a classe abntex2
\PassOptionsToClass{chapter=TITLE}{abntex2} % títulos de capítulos convertidos em letras maiúsculas
\PassOptionsToClass{section=TITLE}{abntex2} % títulos de seções convertidos em letras maiúsculas
\PassOptionsToPackage{english}{babel} % idioma adicional para hifenização/citação

%
% Repassa todos os demais parametros a classe abntex2, 
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}


% ---
% INICIO DAS CUSTOMIZACOES PARA O DEPARTAMENTO DE COMPUTAÇÃO DA UNIVERSIDADE ESTADUAL DE LONDRINA
% ---

\providecommand{\imprimirmembrobancadois}{}
\newcommand{\membrobancadois}[1]{\renewcommand{\imprimirmembrobancadois}{#1}}

\providecommand{\imprimirmembrobancatres}{}
\newcommand{\membrobancatres}[1]{\renewcommand{\imprimirmembrobancatres}{#1}}

\providecommand{\imprimirmembrobancaquatro}{}
\newcommand{\membrobancaquatro}[1]{\renewcommand{\imprimirmembrobancaquatro}{#1}}

\providecommand{\imprimirinstmembrobancadois}{}
\newcommand{\instmembrobancadois}[1]{\renewcommand{\imprimirinstmembrobancadois}{#1}}

\providecommand{\imprimirinstmembrobancatres}{}
\newcommand{\instmembrobancatres}[1]{\renewcommand{\imprimirinstmembrobancatres}{#1}}

\providecommand{\imprimirinstmembrobancaquatro}{}
\newcommand{\instmembrobancaquatro}[1]{\renewcommand{\imprimirinstmembrobancaquatro}{#1}}

\providecommand{\imprimirdiadefesa}{}
\newcommand{\diadefesa}[1]{\renewcommand{\imprimirdiadefesa}{#1}}

\providecommand{\imprimirnivel}{}
\newcommand{\nivel}[1]{\renewcommand{\imprimirnivel}{#1}}

\providecommand{\imprimircitacaoautor}{}
\newcommand{\citacaoautor}[1]{\renewcommand{\imprimircitacaoautor}{#1}}

\providecommand{\imprimirpalavraschave}{}
\newcommand{\palavraschave}[1]{\renewcommand{\imprimirpalavraschave}{#1}}

\providecommand{\imprimirtituloingles}{}
\newcommand{\tituloingles}[1]{\renewcommand{\imprimirtituloingles}{#1}}

\providecommand{\imprimirpalavraschaveingles}{}
\newcommand{\palavraschaveingles}[1]{\renewcommand{\imprimirpalavraschaveingles}{#1}}

% alterando a capa
\renewcommand{\imprimircapa}{%

  % definindo o preambulo
  \ifthenelse{\equal{\DCUEListcc}{true}}
    {\preambulo{Trabalho de Conclus\~{a}o de Curso apresentado ao curso de Bacharelado em Ci\^{e}ncia
      da Computa\c{c}\~{a}o da Universidade Estadual de Londrina para obten\c{c}\~{a}o do t\'{i}tulo de
      Bacharel em Ci\^{e}ncia da Computa\c{c}\~{a}o.}}{}
  \ifthenelse{\equal{\DCUELisdissertacao}{true}}
    {\preambulo{Disserta\c{c}\~{a}o apresentada ao Programa de Mestrado em Ci\^{e}ncia  da Computa\c{c}\~{a}o da 
      Universidade Estadual de Londrina para obten\c{c}\~{a}o do t\'{i}tulo de Mestre em Ci\^{e}ncia
      da Computa\c{c}\~{a}o.}}{}
  \ifthenelse{\equal{\DCUELisqualificacaoms}{true}}
    {\preambulo{Qualifica\c{c}\~{a}o apresentada ao Programa de Mestrado em Ci\^{e}ncia  da Computa\c{c}\~{a}o da 
      Universidade Estadual de Londrina como requisito parcial para obten\c{c}\~{a}o do t\'{i}tulo de Mestre em Ci\^{e}ncia
      da Computa\c{c}\~{a}o.}}{}

  \begin{capa}%

    \center
    \includegraphics[scale=1]{logouel.jpg}
    \includegraphics[scale=1]{faixa.jpg}

    {\ABNTEXchapterfont\large \expandafter\MakeUppercase{\imprimirautor}}

    \vspace*{\fill}
    {\ABNTEXchapterfont\bfseries\Large \expandafter\MakeUppercase{\imprimirtitulo}}
    \vspace*{\fill}

    \includegraphics[scale=1]{faixa.jpg}
    {\ABNTEXchapterfont\bfseries \expandafter\MakeUppercase{\imprimirlocal}}
    \par
    {\ABNTEXchapterfont\bfseries \imprimirdata}
    
    \vspace*{1cm}

  \end{capa}
}

% folha de rosto 

\makeatletter

\renewcommand{\folhaderostocontent}{
\begin{center}

    {\ABNTEXchapterfont\large \expandafter\MakeUppercase{\imprimirautor}}

    \vspace*{\fill}\vspace*{\fill}\vspace*{\fill}\vspace*{\fill}
    {\ABNTEXchapterfont\bfseries\Large \expandafter\MakeUppercase{\imprimirtitulo}}
    \vspace*{\fill}\vspace*{\fill}\vspace*{\fill}\vspace*{\fill}

 \abntex@ifnotempty{\imprimirpreambulo}{
  \hspace{.45\textwidth}
  \begin{minipage}{.5\textwidth}
  \SingleSpacing
    \imprimirpreambulo

  \vspace*{0.4cm}
  {\imprimirorientadorRotulo~\imprimirorientador\par}

  \abntex@ifnotempty{\imprimircoorientador}{%
    {\imprimircoorientadorRotulo~\imprimircoorientador}%
  }%

  \end{minipage}%
  \vspace*{\fill}
 }%

    \vspace*{\fill}

    {\ABNTEXchapterfont\bfseries \expandafter\MakeUppercase{\imprimirlocal}}
    \par
    {\ABNTEXchapterfont\bfseries \imprimirdata}

    \vspace*{1cm}
\end{center}
}

\makeatother

\newcommand{\imprimirfolhadeaprovacao}{%
\begin{folhadeaprovacao}

  \begin{center}
    {\ABNTEXchapterfont\large \expandafter\MakeUppercase{\imprimirautor}}

    \vspace*{\fill}\vspace*{\fill}
    {\ABNTEXchapterfont\bfseries\Large \expandafter\MakeUppercase{\imprimirtitulo}}
    \vspace*{\fill}\vspace*{\fill}
    
    \hspace{.45\textwidth}
    \begin{minipage}{.5\textwidth}
        \imprimirpreambulo

    \vspace*{0.5cm}
    \center{\bfseries BANCA EXAMINADORA}

   \assinatura{\imprimirorientador \\ \imprimirinstituicao \\ Orientador}
   \ifthenelse{\not\equal{\imprimirmembrobancadois}{}}{\assinatura{\imprimirmembrobancadois \\ \imprimirinstmembrobancadois}}{}
   \ifthenelse{\not\equal{\imprimirmembrobancatres}{}}{\assinatura{\imprimirmembrobancatres \\ \imprimirinstmembrobancatres}}{}
   \ifthenelse{\not\equal{\imprimirmembrobancaquatro}{}}{\assinatura{\imprimirmembrobancaquatro \\ \imprimirinstmembrobancaquatro}}{}


   \vspace*{1cm}

   \imprimirlocal, \imprimirdiadefesa de \imprimirdata

    \end{minipage}%
    \vspace*{\fill}
   \end{center}
      
   \begin{center}
    \vspace*{0.5cm}
    {\ABNTEXchapterfont\bfseries \expandafter\MakeUppercase{\imprimirlocal}}
    \par
    {\ABNTEXchapterfont\bfseries \imprimirdata}
    \vspace*{1cm}
  \end{center}
  
\end{folhadeaprovacao}
}

\renewenvironment{resumo}[1][\resumoname]{%

   \noindent
   \hspace{.055\textwidth}
   \begin{minipage}{.875\textwidth}
     \expandafter\MakeUppercase{\imprimircitacaoautor}. {\bfseries\imprimirtitulo}. \pageref{LastPage} p. 
     \ifthenelse{\equal{\DCUEListcc}{true}}{Trabalho de Conclus\~{a}o de Curso (Gradua\c{c}\~{a}o). Bacharelado em Ci\^{e}ncia da Computa\c{c}\~{a}o}{}%
     \ifthenelse{\equal{\DCUELisdissertacao}{true}}{Disserta\c{c}\~{a}o (Mestrado). Mestrado em Ci\^{e}ncia da Computa\c{c}\~{a}o}{}%
     \ifthenelse{\equal{\DCUELisqualificacaoms}{true}}{Qualifica\c{c}\~{a}o (Mestrado). Mestrado em Ci\^{e}ncia da Computa\c{c}\~{a}o}{}%
     ~-- \imprimirinstituicao, \imprimirdata.
   \end{minipage}
   \vspace*{1cm}

   \PRIVATEbookmarkthis{#1}
   \renewcommand{\abstractnamefont}{\chaptitlefont}
   \renewcommand{\abstractname}{\ABNTEXchapterupperifneeded{#1}}
   \begin{abstract}
     \SingleSpacing
   }{\end{abstract}

  \vspace{\onelineskip}
    
  \noindent
  \hspace{.055\textwidth}
  \begin{minipage}{.875\textwidth}
    \textbf{Palavras-chave}: \imprimirpalavraschave
  \end{minipage}

 \vspace*{\fill}
 \PRIVATEclearpageifneeded

}

\newenvironment{Abstract}[1][Abstract]{%

   \noindent
   \hspace{.055\textwidth}
   \begin{minipage}{.875\textwidth}
     \expandafter\MakeUppercase{\imprimircitacaoautor}. {\bfseries\imprimirtituloingles}. \pageref{LastPage} p. 
     \ifthenelse{\equal{\DCUEListcc}{true}}{Final Project (Undergraduation). Bachelor of Science in Computer Science}{}%
     \ifthenelse{\equal{\DCUELisdissertacao}{true}}{Thesis (Master). Master in Science in Computer Science}{}%
     \ifthenelse{\equal{\DCUELisqualificacaoms}{true}}{Qualification (Master). Master in Science in Computer Science}{}%
     ~-- State University of Londrina, \imprimirdata.
   \end{minipage}
   \vspace*{1cm}

   \PRIVATEbookmarkthis{#1}
   \renewcommand{\abstractnamefont}{\chaptitlefont}
   \renewcommand{\abstractname}{\ABNTEXchapterupperifneeded{#1}}
   \begin{abstract}
     \SingleSpacing
     \begin{otherlanguage*}{english}
     }{
     \end{otherlanguage*}
   \end{abstract}

  \vspace{\onelineskip}
    
  \noindent
  \hspace{.055\textwidth}
  \begin{minipage}{.875\textwidth}
    \textbf{Keywords}: \imprimirpalavraschaveingles
  \end{minipage}

 \vspace*{\fill}
 \PRIVATEclearpageifneeded

}

\renewcommand{\ABNTEXchapterfont}{\bfseries} % altera a fonte do capitulo
\renewcommand{\ABNTEXchapterfontsize}{\Large} % altera o tamanho da fonte de \chapter (inclusive dos elementos pré-textuais)
\renewcommand{\ABNTEXsectionfontsize}{\large} % altera o tamanho da fonte de \section

% ---
% PACOTES
% ---

% ---
% Pacotes fundamentais 
% ---

\RequirePackage{cmap}			% Mapear caracteres especiais no PDF
\RequirePackage{lmodern}			% Usa a fonte Latin Modern			
\RequirePackage{lastpage}			% Usado pela Ficha catalográfica
\RequirePackage{indentfirst}		% Indenta o primeiro parágrafo de cada seção.
\RequirePackage{color}			% Controle das cores

% ---
% Pacotes de citações
% ---
% \RequirePackage[brazilian,hyperpageref]{backref}	 % Paginas com as citações na bibl
\RequirePackage[num]{abntex2cite}	% Citações numéricas padrão ABNT

% --- 
% CONFIGURAÇÕES DE PACOTES
% --- 

% ---
% Configurações do abntex2cite
\citebrackets[] % altera as citações no texto para usar colchetes
% % ---

% % ---
% % Configurações do pacote backref
% % Usado sem a opção hyperpageref de backref
% \renewcommand{\backrefpagesname}{Citado na(s) página(s):~}
% % Texto padrão antes do número das páginas
% \renewcommand{\backref}{}
% % Define os textos da citação
% \renewcommand*{\backrefalt}[4]{
% 	\ifcase #1 %
% 		Nenhuma citação no texto.%
% 	\or
% 		Citado na página #2.%
% 	\else
% 		Citado #1 vezes nas páginas #2.%
% 	\fi}%
% % ---

% ---
% Configurações de aparência do PDF final

% alterando o aspecto da cor azul
\definecolor{blue}{RGB}{41,5,195}

% informações do PDF
\makeatletter
\hypersetup{
     	%pagebackref=true,
		pdftitle={\@title}, 
		pdfauthor={\@author},
    	pdfsubject={\imprimirpreambulo},
	    pdfcreator={LaTeX with abnTeX2},
		pdfkeywords={abnt}{latex}{abntex}{abntex2}{trabalho acadêmico}, 
		colorlinks=true,       		% false: boxed links; true: colored links
    	linkcolor=blue,          	% color of internal links
    	citecolor=blue,        		% color of links to bibliography
    	filecolor=magenta,      		% color of file links
		urlcolor=blue,
		bookmarksdepth=4
}
\makeatother
% --- 

% --- 
% Espaçamentos entre linhas e parágrafos 
% --- 

% O tamanho do parágrafo é dado por:
\setlength{\parindent}{1.3cm}

% Controle do espaçamento entre um parágrafo e outro:
\setlength{\parskip}{0.2cm}  % tente também \onelineskip

% Constantes do abntex2
\instituicao{Universidade Estadual de Londrina}
\local{Londrina--PR}

% ---
% FIM DAS CUSTOMIZACOES PARA O DEPARTAMENTO DE COMPUTAÇÃO DA UNIVERSIDADE ESTADUAL DE LONDRINA
% ---
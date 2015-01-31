% Document class for UTBM Internship report

%% Using report class as a basis
\LoadClass[a4paper, 11pt, twoside, openright]{report}

%% Declare the LaTeX class
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{utbmreport}[2015/01/28 v1.0 UTBM Report]

%% Dependencies
\RequirePackage{graphicx, textpos}
\RequirePackage{color, colortbl}
\RequirePackage{url}
\RequirePackage{tikz}
%\RequirePackage{minted}

%% Main color
\definecolor{black}{rgb}{0, 0, 0}
\definecolor{darkgrey}{rgb}{0.24, 0.23, 0.26}
\definecolor{lightgrey}{rgb}{0.84, 0.84, 0.84}
\definecolor{white}{rgb}{1, 1, 1}

%% Font
% Officially, the font used by UTBM is The Sans, but it costs a lot ;)
% So we stuck with a sans-serif	
\renewcommand{\familydefault}{\sfdefault}

%% Background of frontpage
\newcommand{\frontlayout}[3]{
	\vspace*{-4.9cm}
	\hspace*{0.18cm}
	\makebox[\textwidth]{\includegraphics[width=\paperwidth, height=10cm]{#2}}
	\begin{tikzpicture}[remember picture, overlay]
		\fill[black] (-4.8cm, 0) rectangle (\paperwidth, 0.7cm);
		\fill[#1] (-4.8cm, 0) rectangle (\paperwidth, -3.3cm);
		\fill[darkgrey] (-4.8cm, -3.3cm) rectangle (\paperwidth, -4.2cm);
		\fill[lightgrey] (-4.8cm, -4.2cm) rectangle (\paperwidth, -16.5cm);
	\end{tikzpicture}%

	\begin{textblock*}{21cm}(-3.2cm, 17cm)
		\includegraphics[height=50px]{#3}
	\end{textblock*}
	\begin{textblock*}{21cm}(11.9cm, 17cm)
		\includegraphics[height=50px]{images/utbm.jpg}
	\end{textblock*}
}

%% Title of report
\newcommand{\reporttitle}[2]{ % Title + subtitle
	\begin{textblock*}{21cm}(-2.5cm, -0.45cm)
		\noindent
		\color{white}\uppercase{\textbf{University of technologie} of Belfort-Montbeliard}
	\end{textblock*}
	\begin{textblock*}{21cm}(-2.5cm, 0.5cm)
		\noindent
		\Huge\color{white}\textbf{#1}
	\end{textblock*}
	\begin{textblock*}{21cm}(-2.5cm, 3.55cm)
		\noindent
		\Large\color{white}#2
	\end{textblock*}
}

\newcommand{\reportauthor}[3]{ % Name of author
	\begin{textblock*}{21cm}(-2.5cm, 4.8cm)
		\noindent
		\huge\color{black}\textbf{#1}\\
		\Large\color{darkgrey}#2\\
		#3
	\end{textblock*}
}

\newcommand{\firm}[3]{ % Firm's name + address + website
	\begin{textblock*}{21cm}(-2.5cm, 9.5cm)
		\noindent
		\huge\color{black}\textbf{#1}\\
		\large\color{darkgrey}#2\\
		\url{#3}
	\end{textblock*}
}

\newcommand{\mentors}[2]{ % Mentor + follower
	\begin{textblock*}{19.3cm}(-2.5cm, 14.5cm)
		\noindent
		\large\color{darkgrey}Company Mentor \hfill UTBM Follower\\
		\Large\color{black}\textbf{#1} \hfill \textbf{#2}
	\end{textblock*}
}

%% Back cover
\newcommand{\backlayout}[1]{
	\vspace*{-4.9cm}
	\begin{tikzpicture}[remember picture, overlay]
		\fill[black] (-5.8cm, -10cm) rectangle (\paperwidth, -9.3cm);
		\fill[lightgrey] (-5.8cm, -10cm) rectangle (\paperwidth, -26.5cm);
	\end{tikzpicture}%

	\begin{textblock*}{19.3cm}(-4.9cm, 27cm)
		\includegraphics[height=50px]{#1}
	\end{textblock*}
	\begin{textblock*}{19.3cm}(10.2cm, 27cm)
		\includegraphics[height=50px]{images/utbm.jpg}
	\end{textblock*}
}

\newcommand{\keywords}[4]{ % Four keywords
	\begin{textblock*}{19.3cm}(3cm, -9cm)
		\noindent\Huge\textbf{Keywords :}\\
		\LARGE#1\\
		#2\\
		#3\\
		#4
	\end{textblock*}
}

\newcommand{\reportinfo}[2]{ % Author's name + subtitle
	\begin{textblock*}{19.3cm}(0cm, -1.8cm)
		\noindent\Large\textbf{#1} \hfill \textbf{#2}
	\end{textblock*}
}

\newcommand{\firmback}[3]{ % Firm's name + address + website
	\begin{textblock*}{19.3cm}(0cm, 2cm)
		\noindent
		\huge\color{black}\textbf{#1}\\
		\large\color{darkgrey}#2\\
		\url{#3}
	\end{textblock*}
}

\newenvironment{backcover}[2][]
	{\cleartoleftpage\thispagestyle{empty}\backlayout{#2}
	\begin{textblock*}{19.3cm}(-4.1cm, 10.5cm)\Large}
 	{\end{textblock*}}

\newcommand*\cleartoleftpage{%
  \clearpage
  \ifodd\value{page}\hbox{}\newpage\fi
}

%% Implement code
%\newcommand{\code}[4]{
%	\begin{figure}
%		\begin{minted}[bgcolor=bg,tabsize=4]{#1}
%#2
%		\end{minted}
%	\color{black} #1		\caption{#3}
%		\label{#4}
%	\end{figure}
%}
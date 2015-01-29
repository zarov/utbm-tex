% Document class for UTBM Internship report

%% Using report class as a basis
\LoadClass{report}

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
	\vspace*{-4.8cm}
	\noindent\makebox[\textwidth]{\includegraphics[width=\paperwidth, height=10cm]{#2}}
	\begin{tikzpicture}[remember picture, overlay]
		\fill[black] (-4.8cm, 0) rectangle (\paperwidth, 0.7cm);
		\fill[#1] (-4.8cm, 0) rectangle (\paperwidth, -3.3cm);
		\fill[darkgrey] (-4.8cm, -3.3cm) rectangle (\paperwidth, -4.2cm);
		\fill[lightgrey] (-4.8cm, -4.2cm) rectangle (\paperwidth, -15cm);
	\end{tikzpicture}%

	\begin{textblock*}{21cm}(-4.2cm, 15.5cm)
		\includegraphics[height=50px]{#3}
	\end{textblock*}
	\begin{textblock*}{21cm}(11cm, 15.5cm)
		\includegraphics[height=50px]{images/utbm.jpg}
	\end{textblock*}

}

%% Title of report
\newcommand{\reporttitle}[2]{ % Title + subtitle
	\begin{textblock*}{21cm}(-3.6cm, -0.45cm)
		\noindent
		\color{white}\uppercase{\textbf{University of technologie} of Belfort-Montbeliard}
	\end{textblock*}
	\begin{textblock*}{21cm}(-3.6cm, 0.5cm)
		\noindent
		\Huge\color{white}\textbf{#1}
	\end{textblock*}
	\begin{textblock*}{21cm}(-3.6cm, 3.55cm)
		\noindent
		\Large\color{white}#2
	\end{textblock*}
}

\newcommand{\reportauthor}[3]{ % Name of author
	\begin{textblock*}{21cm}(-3.6cm, 4.8cm)
		\noindent
		\huge\color{black}\textbf{#1}\\
		\Large\color{darkgrey}#2\\
		#3
	\end{textblock*}
}

\newcommand{\firm}[3]{ % Firm's name + address + website
	\begin{textblock*}{21cm}(-3.6cm, 8.5cm)
		\noindent
		\huge\color{black}\textbf{#1}\\
		\large\color{darkgrey}#2\\
		\url{#3}
	\end{textblock*}
}

\newcommand{\mentors}[2]{ % Mentor + follower
	\begin{textblock*}{19.3cm}(-3.6cm, 12.5cm)
		\noindent
		\large\color{darkgrey}Company Mentor \hfill UTBM Follower\\
		\Large\color{black}\textbf{#1} \hfill \textbf{#2}
	\end{textblock*}
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
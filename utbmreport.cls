% Document class for UTBM Internship report

%% Using report class as a basis
\LoadClass{report}

%% Declare the LaTeX class
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{utbmreport}[2015/01/28 v1.0 UTBM Report]

%% Dependencies
\RequirePackage{graphicx}
\RequirePackage{color, colortbl}
%\RequirePackage{minted}

%% Main color
\definecolor{black}{rgb}{0, 0, 0}
\definecolor{darkgrey}{rgb}{0.24, 0.23, 0.26}
\definecolor{lightgrey}{rgb}{0.84, 0.84, 0.84}
\definecolor{white}{rgb}{1, 1, 1}
\definecolor{maincolor}{rgb}{0, 0.41, 0.7}

%% Font
% Officially, the font used by UTBM is The Sans, but it costs a lot ;)
% So we stuck with Open Sans

%% Custom variables
\newcommand{\frontimage}[1]{ % Path of the front illustration
	\vspace*{-4.8cm}
	\noindent\makebox[\textwidth]{\includegraphics[width=\paperwidth, height=300px]{#1}}
	\makebox[\textwidth]{\colorbox{black}{\makebox[\paperwidth][l]{\color{white}\textbf{UNIVERSITE DE TECHNOLOGIE} DE BELFORT MONTBELIARD}}}
}

\newcommand{\reporttitle}[2]{ % Title + subtitle
	\makebox[\textwidth]{\colorbox{maincolor}{\makebox[\paperwidth][l]{\color{white}#1}}}
	\makebox[\textwidth]{\colorbox{darkgrey}{\makebox[\paperwidth][l]{\color{white}#2}}}
}

\newcommand{\reportauthor}[1]{ % Name of author
	\Huge#1
}

\newcommand{\departement}[2]{ % Department of study + speciality
	#1\\
	#2
}

\newcommand{\firm}[3]{ % Firm's name + address + website
	#1\\
	#2\\
	#3
}

\newcommand{\mentor}[2]{ % Name + position
	#1\\
	#2
}

\newcommand{\follower}[2]{ % Name + position
	#1\\
	#2
}

\newcommand{\firmlogo}[1]{ % Path of logo
	\includegraphics[height=50px]{images/utbm.jpg}
	\includegraphics[height=50px]{#1}
}

%% Implement code
%\newcommand{\code}[4]{
%	\begin{figure}
%		\begin{minted}[bgcolor=bg,tabsize=4]{#1}
%#2
%		\end{minted}
%		\caption{#3}
%		\label{#4}
%	\end{figure}
%}
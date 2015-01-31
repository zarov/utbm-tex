# utbm-tex

## Dependencies
Dependencies on OS X
```bash
sudo easy_install Pygments
```

## Usage

### Code snippet
The minted package is used to add code in the report. You need to install pygments if you want to use it. Write it as follow :
```latex
\begin{figure}
	\begin{minted}[bgcolor=bg, tabsize=4]{c} % Last argument is the language
		printf("hello");
	\end{minted}
\end{figure}
```

### Quote
```latex
\begin{uquote}{My source}
	This is a citation
\end{uquote}
```

### Compilation
```bash
make
```




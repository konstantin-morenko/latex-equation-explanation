Align explanation for formulas in LaTeX
========

The package is licenced under Creative Commons Attribution-ShareAlike
4.0 International (CC BY-SA 4.0).

The package was developed as an answer to the question on [tex.stackexchange.com](https://tex.stackexchange.com/q/95838/119485)

The package `eqexpl` was developed to give the tool to make «perfect»
explanation for formulas, not just the enumeration.

                I = U / Rs,            (1)

    where   U --- voltage at the section, V;
	       Rs --- total     section    resis-
                  tance, Ohm.

Requirements:
1. The variables (left side) must be aligned right.
2. The dash must be aligned center one under another.
3. The explanation (right side) must be justified, the last string
   must be aligned left and
   - if the explanation takes more than one line, the left side of
     explanation must be aligned (second explanation in the example).

The package adds new environment `eqexpl` with a command `\item` with
one required parameter --- variable to explain.  The explanation in
the example above was made with the code

    \begin{eqexpl}
      \item{U} voltage at the section, V;
	  \item{Rs} total section resistance, Ohm.
	\end{exqexpl}

See example `eqexpl.tex` for more details.  You can compile it with
`pdflatex eqexpl.tex`.

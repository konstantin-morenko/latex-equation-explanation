Explanation of the formulas in LaTeX
========

[Русский]({% link index.ru.md %})

Package `eqexpl` was developed for give an ability to make «perfect»
explanation to formulas, not just the enumeration.

                I = U / Rs,            (1)

    where   U --- voltage at the section, V;
	       Rs --- total     section    resis-
		          tance, Ohm.

Requirements:
1. The variables (left side) must be aligned right..
2. The dash must be aligned center one under another.
3. The explanation (right side) must be justified, the last string
   must be aligned left and
   - if the explanation takes more than one line, the left side of
     explanation must be aligned (second explanation in the example).

The package adds new environment `eqexpl` with a command `\item` with
one required parameter --- variable to explain.  The explanation in
the example above was made with the code

    \begin{eqexpl}
      \item{U}voltage at the section, V;
	  \item{Rs}total section resistance, Ohm.
	\end{exqexpl}

Width of the field for explained variables could be set with optional
argument, default is 10 mm

    \begin{eqexpl}[15mm]

Delimiter could be set with command `\eqexplSetDelim{delimiter}`

Parenthesis («where») could be set with the command
`\eqexplSetIntro{where}`, the parenthesis printed only for the first
item in the explanation.

For formula variables in the explanation use usual string envirinment
(dollar sign)

    \item{$R_s$}total section resistance, Ohm.

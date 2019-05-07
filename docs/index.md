Explanation of the formulas in LaTeX
========

[Русский]({{ site.baseurl }}{% link index.ru.md %})

Package available on [ctan.org](https://ctan.org/pkg/eqexpl).

Package available in Ubuntu in package
[texlive-science](https://packages.ubuntu.com/disco/texlive-science)
starting from version 19.4 Disco Dingo.

Package `eqexpl` was developed as an answer to question on
[StackExchange](https://tex.stackexchange.com/q/95838/119485) for
giving the ability to make «perfect» explanation of components of a
formula, not just the enumeration.

![Eqexpl example]({{ site.baseurl }}/eqexpl-example.png)

Requirements:
1. The variables (left side) must be aligned right..
2. The dash must be aligned center one under another.
3. The explanation (right side) must be justified, the last string
   must be aligned left and
   - if the explanation takes more than one line, the left side of
     explanation must be aligned (second explanation in the example).

The package adds new environment `eqexpl` with a command `\item` with
one required parameter --- variable to explain.  The explanation in
the example above was made with the code in preamble

```latex
\usepackage{eqexpl}
\eqexplSetDelim{=}
```

and in document

```latex
\begin{eqexpl}[25mm]
\item{$H_s$}significant wave height, equal to the average of the
highest 1/3 of the waves
\item{$\Delta$}relative buoyant density, equal to $\rho_r / \rho_w -
1$, where $\rho_w$ is the water density
\item{$D_{n50}$}nominal diameter defined in Equation (2)
\end{eqexpl}
```

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

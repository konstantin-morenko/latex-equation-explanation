Explanation of the formulas in LaTeX
========

<!-- Yandex.Metrika counter -->
<script type="text/javascript" >
   (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
   m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
   (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

   ym(69954367, "init", {
        clickmap:true,
        trackLinks:true,
        accurateTrackBounce:true
   });
</script>
<noscript><div><img src="https://mc.yandex.ru/watch/69954367" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->

[Русский]({{ site.baseurl }}{% link index.ru.md %})

Package is available on [ctan.org](https://ctan.org/pkg/eqexpl).

Package is available on Ubuntu in 
[texlive-science](https://packages.ubuntu.com/disco/texlive-science)
starting from version 19.4 Disco Dingo.

Package `eqexpl` was developed as an answer to the question on
[StackExchange](https://tex.stackexchange.com/q/95838/119485) 
giving the ability to make a «perfect» explanation of components of an
equation, not just the enumeration.

![Eqexpl example]({{ site.baseurl }}/eqexpl-example.png)

Requirements:
1. The variables (left side) must be aligned right.
2. The dash must be aligned center one under another.
3. The explanation (right side) must be justified, the last string
   must be aligned left and
   - if the explanation takes more than one line, the left side of
     explanation must be aligned (second explanation in the example).

The package adds new environment `eqexpl` with a command `\item` with
one required parameter --- a variable to explain.  The explanation in
the example above was made with the next code in preamble

```latex
\usepackage{eqexpl}
\eqexplSetDelim{=}
```

and in the document

```latex
\begin{eqexpl}[25mm]
\item{$H_s$}significant wave height, equal to the average of the
highest 1/3 of the waves
\item{$\Delta$}relative buoyant density, equal to $\rho_r / \rho_w -
1$, where $\rho_w$ is the water density
\item{$D_{n50}$}nominal diameter defined in Equation (2)
\end{eqexpl}
```

Width of the field for explained variables can be set with an optional
argument, default is 10 mm

    \begin{eqexpl}[15mm]

Delimiter can be set with the command `\eqexplSetDelim{delimiter}`

The parenthesis («where») can be set with the command
`\eqexplSetIntro{where}`, the parenthesis is printed only for the first
item in the explanation.

For equation variables in the explanation use usual string envirinment
(dollar sign)

    \item{$R_s$}total section resistance, Ohm.

Пояснения к формулам в LaTeX
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

[English]({{ site.baseurl }}{% link index.md %})

Пакет доступен на [ctan.org](https://ctan.org/pkg/eqexpl).

Пакет доступен в Ubuntu в пакете
[texlive-science](https://packages.ubuntu.com/disco/texlive-science)
начиная с версии 19.4 Disco Dingo.

Пакет `eqexpl` был разработан как ответ на вопрос на
[StackExchange](https://tex.stackexchange.com/q/95838/119485) для
того, чтобы обеспечить возможность давать формулам более осмысленные
пояснения, оформление которых отличается от простого перечисления.

![Eqexpl example]({{ site.baseurl }}/eqexpl-example.png)

Требования к оформлению:
1. Поясняемые переменные выравниваются по правому краю.
2. Тире пояснения выравнивается по центру друг под другом.
3. Пояснения выравниваются по ширине, последняя строка выравнивается
   по левому краю, при этом
   - если левый край пояснения занимает более одной строки, строки
     должны быть выровнены слева (например, как во втором пояснении).

Пакет добавляет новое окружение `eqexpl`, внутри которого команда
перечисления `\item` имеет обязательный параметр --- поясняемую
переменную.  Пояснение выше выполненяется следующим образом в
преамбуле

```latex
\usepackage{eqexpl}
\eqexplSetDelim{=}
```

и в самом документе

```latex
\begin{eqexpl}[25mm]
\item{$H_s$}significant wave height, equal to the average of the
highest 1/3 of the waves
\item{$\Delta$}relative buoyant density, equal to $\rho_r / \rho_w -
1$, where $\rho_w$ is the water density
\item{$D_{n50}$}nominal diameter defined in Equation (2)
\end{eqexpl}
```

Ширина поля для поясняемых переменных может быть задана с помощью
необязательного параметра окружения, по умолчанию 10 мм

    \begin{eqexpl}[15mm]

Разделитель может быть задан командой `\eqexplSetDelim{delimiter}`

Вводное слово задаётся командой `\eqexplSetIntro{где}`, при этом
вводное слово выводится только перед первой переменной.

Для того, чтобы использовать формулы в пояснении, их нужно заключить в
строковое окружение формул

    \item{$R_s$} суммарное сопротивление участка, Ом.

Geometric Objects : Range
=============

Discrete
-------------
* **geom_linerange**: An interval represented by a vertical line.
* **geom_pointrange**: An interval represented by a vertical line, with a point in the middle.
* **geom_errorbar**: Error bars.
* **geom_errorbarh**: Horizontal error bars.
* **geom_crossbar**: Hollow bar with middle indicated by horizontal line.

```R
dmod <- lm(price ~ cut, data=diamonds)
cuts <- data.frame(cut=unique(diamonds$cut), predict(dmod, data.frame(cut = unique(diamonds$cut)), se=TRUE)[c("fit","se.fit")])
se <- ggplot(cuts, aes(cut, fit, ymin = fit - se.fit, ymax=fit + se.fit, colour = cut))
se + geom_linerange()
se + geom_pointrange()
se + geom_errorbar()
se + geom_crossbar()
```
![](https://github.com/xiaeryu/Figures/blob/master/geomObjects_range1.png)

Continuous
-------------------------
* **geom_ribbon**: Ribbons, y range with continuous x values.
* **geom_area**: An area plot is a special case of geom_ribbon, where the minimum of the range is fixed to 0, and the position adjustment defaults to position_stacked.

```R
huron <- data.frame(year = 1875:1972, level = as.vector(LakeHuron))
h <- ggplot(huron, aes(x=year))
h + geom_ribbon(aes(ymin=level-1, ymax=level+1))
h + geom_area(aes(y=level))
```
![](https://github.com/xiaeryu/Figures/blob/master/geomObjects_range2.png)

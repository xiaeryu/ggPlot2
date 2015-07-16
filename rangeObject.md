Geometric Objects : Range
=============

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

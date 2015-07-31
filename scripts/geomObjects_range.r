library(ggplot2)

dmod <- lm(price ~ cut, data=diamonds)
cuts <- data.frame(cut=unique(diamonds$cut), predict(dmod, data.frame(cut = unique(diamonds$cut)), se=TRUE)[c("fit","se.fit")])
se <- ggplot(cuts, aes(cut, fit, ymin = fit - se.fit, ymax=fit + se.fit, colour = cut))
p1 <- se + geom_linerange() + ggtitle("geom_linerange")
p2 <- se + geom_pointrange() + ggtitle("geom_pointrange")
p3 <- se + geom_errorbar() + ggtitle("geom_errorbar")
p4 <- se + geom_crossbar() + ggtitle("geom_crossbar")

multiplot(p1, p3, p2, p4, cols=2)

huron <- data.frame(year = 1875:1972, level = as.vector(LakeHuron))
h <- ggplot(huron, aes(x=year))
h1 <- h + geom_ribbon(aes(ymin=level-1, ymax=level+1))
h2 <- h + geom_area(aes(y=level))

multiplot(h1, h2, cols=2)

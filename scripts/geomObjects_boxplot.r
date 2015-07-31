library(ggplot2)

p <- ggplot(mtcars, aes(factor(cyl), mpg))
p1 <- p + geom_boxplot() + ggtitle("Boxplot")
p2 <- p + geom_boxplot() + geom_jitter() + ggtitle("with Points")
p3 <- p + geom_violin() + ggtitle("Violin plot")

multiplot(p1,p2,p3,cols=3)

msamp <- movies[sample(nrow(movies), 1000), ]
m <- ggplot(msamp, aes(year, rating)) + geom_point(color="pink")
m1 <- m + stat_quantile() + ggtitle("Quantiles")
m2 <- m + stat_quantile(quantiles = seq(0.05, 0.95, by=0.05)) + ggtitle("Specified percentiles")
m3 <- m + geom_smooth() + ggtitle("Smoothed mean")

multiplot(m1,m2,m3,cols=3)

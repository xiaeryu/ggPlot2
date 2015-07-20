Statistics
=========
* **stat_ecdf**: Empirical Cumulative Density Function.
* **stat_function**: Superimpose a function (like use dnorm to add a normal distribution).
* **stat_summary**: Summarise y values at every unique x.
* **stat_unique**: Remove duplicates.
* **stat_qq**: Calculation for quantile-quantile plot.
```R
y <- rt(200, df = 5)
df <- data.frame(y)
ggplot(df, aes(sample = y)) + stat_qq()
```

* **stat_spoke**: Convert angle and radius to xend and yend.
```R
df <- expand.grid(x = 1:10, y=1:10)
df$angle <- runif(100, 0, 2*pi)
df$speed <- runif(100, 0, 0.5)
qplot(x, y, data=df) + stat_spoke(aes(angle=angle, radius=speed))
```

* **stat_sum**: Sum unique values. Useful for overplotting on scatterplots.
```R
d <- ggplot(diamonds, aes(x = cut, y = clarity))
d + stat_sum(aes(group = 1))
```

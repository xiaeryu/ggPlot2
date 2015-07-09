Geometric Objects : Points
==============================
* **geom_point**: create scatterplots
* **geom_jitter**: points are jittered to reduce overplotting
```R
p <- ggplot(mpg, aes(displ, hwy))
p + geom_point()                    # No jittering
p + geom_jitter()                   # With jittering
p + geom_point(position = "jitter") # Similar function
```

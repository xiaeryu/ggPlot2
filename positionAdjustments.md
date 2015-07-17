Position Adjustments
====================

Bars
----------------
* **dodge**: Adjust position by dodging overlaps to the side.
* **stack**: Stack overlapping objects on top of one another.
* **fill**: Stack overlapping objects on top of one another, and standardise to have equal height.
* **identity**: Don't adjust position.

```R
ggplot(diamonds, aes(x=price, fill=cut)) + geom_bar(position="dodge")
ggplot(diamonds, aes(x=price, fill=cut)) + geom_bar(position="stack")
ggplot(diamonds, aes(x=price, fill=cut)) + geom_bar(position="fill")
```

Points
-----------------------------
* **jitter**: Jitter points to avoid overplotting.

Scales
======================
Scales control the mapping between data and aesthetics.

Colors:rainbow:
------------------
* **scale_colour_brewer, scale_fill_brewer**: Sequential, diverging and qualitative colour scales from colorbrewer.org.
* **scale_colour_gradient, scale_fill_gradient, scale_colour_continuous, scale_fill_continuous**: Smooth gradient between two colours.
* **scale_colour_gradient2, scale_fill_gradient2**: Diverging colour gradient.
* **scale_colour_gradientn, scale_fill_gradientn**: Smooth colour gradient between n colours.
* **scale_colour_grey, scale_fill_grey**: Sequential grey colour scale.
* **scale_colour_hue, scale_fill_hue, scale_colour_discrete, scale_fill_discrete**: Qualitative colour scale with evenly spaced hues.

Guides
----------------------------
* **guides**: Set guides for each scale.
* **guide_colourbar**: Colour bar guide shows continuous color scales mapped onto values.
* **guide_legend**: Legend type guide shows key (i.e., geoms) mapped onto values.

Plottings
---------------------
* **scale_linetype**: Default line types based on a set supplied by Richard Pearson, University of Manchester. Line types can not be mapped to continuous values.
* **scale_shape**: Scale for shapes, aka glyphs.
* **scale_size**: Size scale.

Axis
---------------
* **xlim, ylim**: Convenience functions to set the limits of the x and y axis.
* **scale_x_continuous, scale_y_continuous, scale_x_log10, scale_y_log10, scale_x_reverse, cale_y_reverse, scale_x_sqrt, scale_y_sqrt**: Continuous position scales.
* **scale_x_date, scale_y_date**: Position scale, date.
* **scale_x_datetime, scale_y_datetime**: Position scale, date. 
* **scale_x_discrete, scale_y_discrete**: Discrete position.
* **labs, xlab, ylab, ggtitle**: Change axis labels and legend titles.
* **expand_limits**: Expand the plot limits with data.
* **update_labels**: Update axis/legend labels. 
* **geom_rug**: Marginal rug plots.

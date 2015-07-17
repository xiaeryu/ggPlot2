Themes
=======================
Themes control non-data components of the plot.

Theme elements
------------------------------
The individual theme elements are:

##### Basic
* **line**	all line elements (element_line)
* **rect**	all rectangluar elements (element_rect)
* **text**	all text elements (element_text)

##### Title
* **title**	all title elements: plot, axes, legends (element_text; inherits from text)
* **axis.title** label of axes (element_text; inherits from text)
* **axis.title.x**	x axis label (element_text; inherits from axis.title)
* **axis.title.y**	y axis label (element_text; inherits from axis.title)
* **axis.text**	tick labels along axes (element_text; inherits from text)
* **axis.text.x**	x axis tick labels (element_text; inherits from axis.text)
* **axis.text.y**	y axis tick labels (element_text; inherits from axis.text)
* **axis.ticks**	tick marks along axes (element_line; inherits from line)
* **axis.ticks.x**	x axis tick marks (element_line; inherits from axis.ticks)
* **axis.ticks.y**	y axis tick marks (element_line; inherits from axis.ticks)
* **axis.ticks.length**	length of tick marks (unit)
* **axis.ticks.margin**	space between tick mark and tick label (unit)
* **axis.line**	lines along axes (element_line; inherits from line)
* **axis.line.x**	line along x axis (element_line; inherits from axis.line)
* **axis.line.y**	line along y axis (element_line; inherits from axis.line)

##### Legend
* **legend.background** background of legend (element_rect; inherits from rect)
* **legend.margin**	extra space added around legend (unit)
* **legend.key**	background underneath legend keys (element_rect; inherits from rect)
* **legend.key.size**	size of legend keys (unit; inherits from legend.key.size)
* **legend.key.height**	key background height (unit; inherits from legend.key.size)
* **legend.key.width**	key background width (unit; inherits from legend.key.size)
* **legend.text	legend** item labels (element_text; inherits from text)
* **legend.text.align**	alignment of legend labels (number from 0 (left) to 1 (right))
* **legend.title**	title of legend (element_text; inherits from title)
* **legend.title.align**	alignment of legend title (number from 0 (left) to 1 (right))
* **legend.position**	the position of legends. ("left", "right", "bottom", "top", or two-element numeric vector)
* **legend.direction**	layout of items in legends ("horizontal" or "vertical")
* **legend.justification**	anchor point for positioning legend inside plot ("center" or two-element numeric vector)
* **legend.box**	arrangement of multiple legends ("horizontal" or "vertical")
* **legend.box.just**	justification of each legend within the overall bounding box, when there are multiple legends ("top", "bottom", "left", or "right")

##### Panel
* **panel.background** background of plotting area, drawn underneath plot (element_rect; inherits from rect)
* **panel.border**	border around plotting area, drawn on top of plot so that it covers tick marks and grid lines. This should be used with fill=NA (element_rect; inherits from rect)
* **panel.margin**	margin around facet panels (unit)
* **panel.grid**	grid lines (element_line; inherits from line)
* **panel.grid.major**	major grid lines (element_line; inherits from panel.grid)
* **panel.grid.minor**	minor grid lines (element_line; inherits from panel.grid)
* **panel.grid.major.x**	vertical major grid lines (element_line; inherits from panel.grid.major)
* **panel.grid.major.y**	horizontal major grid lines (element_line; inherits from panel.grid.major)
* **panel.grid.minor.x**	vertical minor grid lines (element_line; inherits from panel.grid.minor)
* **panel.grid.minor.y**	horizontal minor grid lines (element_line; inherits from panel.grid.minor)
* **plot.background** background of the entire plot (element_rect; inherits from rect)
* **plot.title**	plot title (text appearance) (element_text; inherits from title)
* **plot.margin**	margin around entire plot (unit with the sizes of the top, right, bottom, and left margins)
* **strip.background** background of facet labels (element_rect; inherits from rect)
* **strip.text**	facet labels (element_text; inherits from text)
* **strip.text.x**	facet labels along horizontal direction (element_text; inherits from strip.text)
* **strip.text.y**	facet labels along vertical direction (element_text; inherits from strip.text)


Arguments
-----------------
* **theme**: Use this function to modify theme settings.
* **add_theme**: Modify properties of an element in a theme object.
* **is.theme**: Reports whether x is a theme object.
* **theme_bw**: A theme with white background and black gridlines.
* **theme_grey**: A theme with grey background and white gridlines.
* **theme_classic**: A classic-looking theme, with x and y axis lines and no gridlines.
* **element_blank**: This theme element draws nothing, and assigns no space.
* **element_line**: Theme element: line.
* **element_rect**: Most often used for backgrounds and borders.
* **element_text**: Theme element: text.
* **rel**: Relative sizing for theme elements.
* **is.rel**: Reports whether x is a rel object.
* **theme_update, theme_get, theme_set**: Use theme_update to modify a small number of elements of the current theme or use theme_set to completely override it.
* **calc_element**: Calculate the element properties, by inheriting properties from its parents.

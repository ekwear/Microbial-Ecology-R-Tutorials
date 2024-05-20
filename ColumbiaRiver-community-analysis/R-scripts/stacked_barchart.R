# make sure the phyloseq and tidyverse packages are called up

library("phyloseq")
library("tidyverse")

# make a stacked bar chart of all of the data. 
# You can adjust the taxonomic level that it's plotting at (domain = 1) as you feel like

plot_bar(physeq, fill = "ta2")

# to make a stacked bar chart of any taxonomic group, you need to first define the group and then plot it. 
# This example shows how to plot the Class Alphaproteobacteria, but you can call up any combination you like by adjusting the ta level and the name.

gp.alpha = subset_taxa(physeq, ta3 == "Alphaproteobacteria")

plot_bar(gp.alpha)

# you can then color the bar chart by any lower taxonomic level you choose. 
# Since this example is a huge class, we're just going to go down one level and look at Order.

plot_bar(gp.alpha, fill = "ta4")

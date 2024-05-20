# make sure the phyloseq and tidyverse packages are called up

library("phyloseq")
library("tidyverse")

# subset your library to a reasonable taxonomic level. 
#For this example, we'll look at the heterotrophic Flavobacteriaceae family.

gp.flavos = subset_taxa(physeq, ta5 == "Flavobacteriaceae")

# make a heatmap (relative abundance shown in color)

plot_heatmap(gp.flavos)

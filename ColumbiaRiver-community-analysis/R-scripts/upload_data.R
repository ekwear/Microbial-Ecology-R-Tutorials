# importing data and opening libraries

# read in .csv files

OTUmat <- read.table("ME23_OTU_table.csv", sep=",", header=TRUE, row.names=1)
TAXAmat <- read.table("ME23_taxa_table.csv", sep=",", header=TRUE, row.names=1)

# vegan requires the OTU table with rows and columns flipped

OTUveg <- t(OTUmat)

# open the relevant libraries

library("phyloseq")
library("vegan")

# make a phyloseq object (associate the OTUs and taxa IDs)

OTU = otu_table(OTUmat, taxa_are_rows = TRUE)
TAX = tax_table(TAXAmat)
physeq = phyloseq(OTU, TAX)
physeq
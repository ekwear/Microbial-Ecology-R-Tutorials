# make sure the vegan package is called up

# make a Bray-Curtis distance matrix describing the relatedness of your samples

distance.matrix <- vegdist(OTUveg, method = "bray")

# calculate the cluster diagram (like an ordination, this is a best-fit depiction of your data). hclust calls hierarchical or furthest-neighbor joining, for those of you who've taken Phylogenetics. 

clust <- hclust(distance.matrix)

# plot your cluster diagram. (The hang command makes all of the branches the same length; you can make a plot that omits it to see how different the figure is to read and interpret.)

plot(clust, hang=-1)
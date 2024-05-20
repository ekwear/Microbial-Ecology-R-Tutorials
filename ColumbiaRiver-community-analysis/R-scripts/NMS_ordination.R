# make sure the vegan package is called up

library("vegan")

# have vegan make a basic NMS (MDS is a synonym) ordination

ord <- metaMDS(OTUveg, distance="bray")

# plot your basic ordination - will display both samples (it calls them sites) and organisms 

plot(ord)

#if you'd like to plot just the samples/sites - the points command will give you dots, the text command will give you labels. Change up the colors as you wish.

plot(ord, type="n")

points(ord, display = "sites", cex = 0.8, pch = 21, col = "blue")

text(ord, display = "sites", cex = 0.7, col = "red")
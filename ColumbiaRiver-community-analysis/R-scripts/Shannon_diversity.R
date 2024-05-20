# make sure the vegan package is called up

shannon <- diversity(OTUveg, index="shannon", MARGIN = 1, base=exp(1))

View(shannon)
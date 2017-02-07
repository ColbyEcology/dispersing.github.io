library(sp)
library(raster)
library(viridis)
library(geoR)
library(RandomFieldsUtils)
library(RandomFields)

length.x <- 10
length.y <- 10

x <- seq(1, 10, length.out = length.x)
y <- seq(1, 10, length.out = length.y)
func <- function(x, y) {
	x*y
}

grid <- outer(X = x, Y = y, FUN = func) + rnorm(length.x*length.y, 0, 5)

rast <- raster(grid)


rast.df <- as.data.frame(rast, xy = T)
rast.df.geo <- as.geodata(rast.df)
ev <- variog(rast.df.geo)


vf <- variofit(ev, cov.model = "exponential")
modObj <- geoR2RF(cov.model = vf$cov.model, cov.pars = vf$cov.pars, nugget = vf$nugget, kappa = vf$kappa)
rfs <- RFsimulate(model = modObj, x = seq(0,1,length.out= length.x), y = seq(0,1,length.out= length.y), grid = TRUE)
new.rast <- raster(rfs)
extent(new.rast) <- extent(rast)
par(mfrow = c(2,2), mar = c(2,2,0,0), oma = rep(1, 4))
image(rast, col = viridis(100, option = "D"))
image(new.rast, col = viridis(100, option = "D"))

rast.new.df <- as.data.frame(new.rast, xy = T)
rast.df.geo.new <- as.geodata(rast.new.df)
ev.new <- variog(rast.df.geo.new)
plot(ev)
plot(ev.new)
cor(values(rast), values(new.rast))
cor(values(rast), values(new.rast), method = "spearman")
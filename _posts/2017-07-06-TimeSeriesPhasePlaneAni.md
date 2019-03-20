
---
title: Time Series and Phase Plane Animation in R
---

```
library(package = "deSolve")
library(package = "phaseR")
library(package = "animation")


cr.LV <- function(time, state, pars) {
	with(as.list(c(state, pars)), {
		dR <- r*R - a*R*C
		dC <- b*R*C - m*C
		return(list(c(dR, dC)))		
	})
}


init <- c(R = 0.3, C = 0.5)
parm.vals <- c(r = 0.5, a = 0.5, b = 0.25, m = 0.5)

times <- seq(from = 0, to = 60, by = 0.1)
crLV.out <- ode(y = init, fun = cr.LV, parms = parm.vals, times = times)


saveVideo({
  time.seq <- times
  n.frames <- length(time.seq)
  total.time = 15
  ani.options(interval = total.time/n.frames, nmax = n.frames)

  for (i in 1:n.frames) {
 par(mar = c(4.5, 4.5, 0.2, 0.2), oma = rep(0, 4), mfrow = c(1, 2))
  plot(x = crLV.out[1:i,1], y = crLV.out[1:i,2], lwd = 2, las = 1, xlab = "Time", ylab = "Density", type = "l", ylim = c(0, max(crLV.out[,c(2,3)])), xlim = c(0, max(crLV.out[,1])), col = "blue")
  lines(x = crLV.out[1:i,1], y= crLV.out[1:i,3], lwd = 2, col = "red")
flowField(deriv = cr.LV, xlim = c(-0.01, 7), ylim = c(-0.01, 7), parameters = parm.vals, add = F, points = 20, las = 1, xaxs = "i", yaxs = "i", state.names = c("R", "C"), ylab = "C", xlab = "R")
  nullclines(deriv = cr.LV, parameters = parm.vals, xlim = c(-0.01, 7), ylim = c(-0.01, 7), add = T, lwd = 2, col = c("blue", "red"), add.legend = F, state.names = c("R", "C"))
points(x = crLV.out[i,2], y = crLV.out[i,3], pch = 16, cex = 1.5)
lines(x = crLV.out[1:i,2], y = crLV.out[1:i,3], lwd = 2)
  }

  }, video.name = "Downloads/CRLV.mp4", ani.width = 800, ani.height = 400, ani.dev = function(...){png(res=100,...)}
)
```

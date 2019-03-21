---
title: Time Series and Phase Plane Animation in R
---

<script type="text/javascript" async
  src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-MML-AM_CHTML">
</script>

For my current position I've currently taught a course in ecology and ecological modeling. For both courses I cover population dynamics and species interactions. A tool commonly used for the qualitative analysis of two-dimensional systems—i.e., two-species interactions—is the [phase plane](https://en.wikipedia.org/wiki/Phase_plane).

I introduce students to phase planes along with some differential equation analysis as tools to provide graphical and analytical examples to help students learn about different types of ecological interactions. The problem with this approach is that time series seems to be how many of use first think about these problems. Even the differential equations themselves are expressed as a rate of change: how populations change over time!

Graphically producing the time series results are important to show but not as ultimately informative as phase planes. On phase planes one can plot a direction field, nullclines (i.e., zero-growth isoclines), initial-condition trajectories, and separatrices among other things. Collectively, these features can give one an understanding about ways to model and about the qualitative behavior of species interactions.

What I have done the past four semesters is first shown the differential equations describing neutral species interactions (i.e., logistic growth: $\mathrm{d}N_i/\mathrm{d}t = r_i N_i - \alpha _i N_i^2 ~ \text{for i = 1,2}$). Next, I show several time series for both species to show the four qualitative behaviors of both populations are below their equilibrium, both are above, one is above and the other below, and vice versa. Next, I will show what this would look like in a phase plane, with $N_1$ and $N_2$ on their own axes. Students will notice that they converge on a single point, and I'll ask what that means. Next, I will go back to the equations, set $\mathrm{d}N_i/\mathrm{d}t = 0$ to find the equations for the null clines, then plot them. That seems to click for most students. Ultimately, I will show, over and over by looping the video, for a given initial condition (i.e., $N_1$ and $N_2$ with specific values), how the populations change as a time series and how that corresponds to trajectories through a phase plane.

Anyhow, I have posted the time series + phase plane animations a couple of times over the past two years, and it looks some people are interested in how I did this in R. Here's my pseudo code:
> Step 1: load packages   
> Step 2: write a function for our numerical solver, `ode()`   
> Step 3: set initial conditions, parameter values, a sequence of time   
> Step 4: run `ode()`   
> Step 5: run the animation function

Note that you will need to install [ffmpeg](https://ffmpeg.org/) for the `animation` package to produce the .mp4. I wrote step-by-step instructions on how to run an animation on OSX a few years ago: [link](http://mutualismecology.com/DynamicHexagonsInR/).

Feel free to contact me with any questions!

```r
# 1. Load packages
  library(package = "deSolve")
  library(package = "phaseR")
  library(package = "animation")

# 2. Write the ODE
  cr.LV <- function(time, state, pars) {
    with(as.list(c(state, pars)), {
      dR <- r*R - a*R*C
      dC <- b*R*C - m*C
      return(list(c(dR, dC)))		
    })
  }

# 3. Set up initial conditions
  init <- c(R = 0.3, C = 0.5)
  parm.vals <- c(r = 0.5, a = 0.5, b = 0.25, m = 0.5)
  times <- seq(from = 0, to = 60, by = 0.1)

# 4. Run the solver
  crLV.out <- ode(y = init, fun = cr.LV, parms = parm.vals, times = times)

# 5. Run amination function
  vid.dir <- "~/Desktop" # set the directory of the video

  saveVideo({
    time.seq <- times
    n.frames <- length(time.seq)
    total.time <- 15
    ani.options(interval = total.time / n.frames, nmax = n.frames)

    for (i in 1:n.frames) {
      par(mar = c(4.5, 4.5, 0.2, 0.2), oma = rep(0, 4), mfrow = c(1, 2))

      # Time series
      plot(x = crLV.out[1:i,1], y = crLV.out[1:i,2], lwd = 2, las = 1, xlab = "Time", ylab = "Density", type = "l", ylim = c(0, max(crLV.out[,c(2,3)])), xlim = c(0, max(crLV.out[,1])), col = "blue")
      lines(x = crLV.out[1:i,1], y= crLV.out[1:i,3], lwd = 2, col = "red")

   		# Phase plane
      flowField(deriv = cr.LV, xlim = c(-0.01, 7), ylim = c(-0.01, 7), parameters = parm.vals, add = F, points = 20, las = 1, xaxs = "i", yaxs = "i", state.names = c("R", "C"), ylab = "Consumer", xlab = "Rersource")
      nullclines(deriv = cr.LV, parameters = parm.vals, xlim = c(-0.01, 7), ylim = c(-0.01, 7), add = T, lwd = 2, col = c("blue", "red"), add.legend = F, state.names = c("R", "C"))
      points(x = crLV.out[i,2], y = crLV.out[i,3], pch = 16, cex = 1.5)
      lines(x = crLV.out[1:i,2], y = crLV.out[1:i,3], lwd = 2)
    }

    }, video.name = paste0(vid.dir, "/CRLV.mp4"), ani.width = 800, ani.height = 400, ani.dev = function(...){png(res=100,...)}
  )
```

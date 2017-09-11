#########~#########~#########~#########~#########~
# BI271, drift example in R
#
# Here, we simulate the effects of genetic drift.
# The three parameters of important are (1) population
# size, (2) the initial value of p, and (3) the number
# of generations to run. Notice that there is a single,
# true, inescapable fact about genetic drift: the
# ultimate fate of all alleles is fixation. Even with
# very large population sizes, if you extend the number
# of generations, you'll see that they all become
# fixed in the population.  Have fun drifting!
# #########~#########~#########~#########~#########~

	# 1. Set parameters
		pop.size <- 100
		initial.p <- 0.5 # proportion fo the population with allele, p
		n.alleles <- pop.size*2 # in this diploid population, there are two alleles for each individual
		generations <- 100

		init.p.num <- pop.size*initial.p # the number of individuals in the population with p
		init.q.num <- pop.size - init.p.num # the number of individuals in the population with q

	# 2. Create an object to store the data	
		data.vector <- matrix(data = NA, nrow = generations, ncol = 3)
			colnames(data.vector) <- c("Generation", "p", "q")
		data.vector[1,] <- c(1, init.p.num, init.q.num)

	# 3. Loop over the generations
		for(i in 2:generations) {
			p.alleles <- data.vector[(i-1), 2]*2 # number of p alleles
			q.alleles <- data.vector[(i-1), 3]*2 # number of q alleles
			out <- table(sample(c(rep(x = "p", times = p.alleles), rep(x = "q", times = q.alleles)), pop.size)) # randomly selects the alleles to form the same population size
			if(length(out) == 2) { # everything until the end of the loop 
				data.vector[i,] <- c(i, out)
				} else {
					if(names(out) == "p") {
						data.vector[i,] <- c(i, out, 0)
					} else {
						data.vector[i,] <- c(i, 0, out)
					}
				}
		}

	# 3. Loop over the generations
		plot(x = data.vector[,1], data.vector[,2]/pop.size, type = "l", ylim = c(0, 1), xlab = "Generation", ylab = "p")
			lines(x = data.vector[,1], data.vector[,3]/pop.size, col = "red")
			axis(4, col = "red", col.axis = "red")
			mtext("q", side = 4, col = "red", line = 2.5)
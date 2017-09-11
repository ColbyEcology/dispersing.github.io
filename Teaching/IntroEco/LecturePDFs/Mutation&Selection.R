#########~#########~#########~#########~#########~
# BI271, mutation and selection examples in R
#
# These examples are for you to use and experiment
# with to your heart's desire. There are three
# parts: (1) irreversible mutation, (2) reversible
# mutation, and (3) selection. Each part has five
# subparts (1) a function is written with the
# recursive equation, (2) parameter values are set
# that will be the main part of this that you will
# want to manipulate, (3) an object is created to
# store the data, (4) a 'loop' is written to iterate
# over the equation for as many generations as you
# wish, and (5) a plot is created for both alleles,
# p & q. Happy population-genetics-ing!
#########~#########~#########~#########~#########~

 # 1. Irreversible mutation
	# 1.1. Write a function that takes p and mu as arguments
	ir.mut <- function(p, mu) {
		p*(1 - mu)
	}
	
	# 1.2. Set parameter values 
		genereations <- 100
		initial.p <- 0.91
		initial.q <- 1 - initial.p
		my.mu <- 0.05

	# 1.3. Create a matrix to record values
		data.vector <- matrix(data = NA, nrow = genereations , ncol = 3)
			colnames(x = data.vector) <- c("Generation", "p", "q") # assign it column names
		data.vector[1,] <- c(1, initial.p, initial.q) # assign it the initial values 
			data.vector[1:5,] # check out to see rows 1--5 to see that the first value is entered, and all others are NA

	# 1.4. Loop function over all the generations
		for (i in 2:genereations) { # loops from the second to last generation
			out <- ir.mut(p = data.vector[(i-1),2], mu = my.mu) # inputs value from pervious generation (the i-1)
			data.vector[i, ] <- c(i, out, (1-out)) # records in generation (row) i
		}

	# 1.5. Plot the data
		par(mar = c(4, 4, 1, 4)) # adjusts the margins to add the right vertical axis
		plot(x = data.vector[,1], y = data.vector[,2], type = "l", ylim = c(0, 1), xlab = "Generation", ylab = "p")
			lines(x = data.vector[,1], y = data.vector[,3], col = "red")
			axis(side = 4, col = "red", col.axis = "red")
			mtext(text = "q", side = 4, col = "red", line = 2.5)

 # 2. Reversible mutation
	# 2.1. Write a function that takes p, mu, and nu as arguments
		rwv.mut <- function(p, mu, nu) {
			p*(1 - mu) + (1-p)*nu
		}
	
	# 2.2. Set parameter values 
		genereations <- 100
		initial.p <- 0.1
		initial.q <- 1 - initial.p
		my.mu <- 0.02
		my.nu <- 0.01

	# 2.3. Create a matrix to record values
		data.vector <- matrix(data = NA, nrow = genereations, ncol = 3)
			colnames(data.vector) <- c("Generation", "p", "q")
		data.vector[1,] <- c(1, initial.p, initial.q)
	
	# 2.4. Loop function over all the generations
		for (i in 2:genereations) {
			out <- rwv.mut(p = data.vector[(i-1),2], mu = my.mu, nu = my.nu)
			data.vector[i, ] <- c(i, out, (1 - out))
		}

	# 2.5. Plot the data
		par(mar = c(4, 4, 1, 4))
		plot(x = data.vector[,1], y = data.vector[,2], type = "l", ylim = c(0, 1), xlab = "Generation", ylab = "p")
			lines(x = data.vector[,1], y = data.vector[,3], col = "red")
			axis(side = 4, col = "red", col.axis = "red")
			mtext(text = "q", side = 4, col = "red", line = 2.5)

 # 3. Selection
	# 3.1. Write a function that takes p, mu, and nu as arguments
		sel <- function(p, w11, w12, w22) {
			((p^2)*w11 + p*(1-p)*w12) / ((p^2)*w11 + 2*p*(1-p)*w12 + ((1-p)^2)*w22)
		}

	# 3.2. Set parameter values 
		genereations <- 100
		initial.p <- 0.6
		initial.q <- 1 - initial.p
		my.w11 <- 0.99
		my.w12 <- 0.98
		my.w22 <- 0.99

	# 3.3. Create a matrix to record values
		data.vector <- matrix(data = NA, nrow = genereations, ncol = 3)
			colnames(data.vector) <- c("Generation", "p", "q")
		data.vector[1,] <- c(1, initial.p, initial.q)

	# 3.4. Loop function over all the generations
		for (i in 2:genereations) {
			out <- sel(p = data.vector[(i-1),2], w11 = my.w11, w12 = my.w12, w2 = my.w22)
			data.vector[i,] <- c(i, out, (1 - out))
		}

	# 3.5. Plot the data
		par(mar = c(4, 4, 1, 4)) # adjusts the margins to add the right vertical axis
		plot(x = data.vector[,1], y = data.vector[,2], type = "l", ylim = c(0, 1), xlab = "Generation", ylab = "p")
			lines(x = data.vector[,1], y = data.vector[,3], col = "red")
			axis(side = 4, col = "red", col.axis = "red")
			mtext(text = "q", side = 4, col = "red", line = 2.5)
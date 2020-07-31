<link rel="stylesheet" href="tufte.css"/>

# Steal this Primer on Mutualism
I wrote a blog post for Dynamic Ecology on how mutualism has been ignored by theoretical textbooks. I didn't have space to write in on how I think simple models mutualism should be included, so I made this webpage. You can steal any and all of it. Attribution is honest, transparent, and respectful; and I'd happily consider writing a chapter in a book. 

I've organized this _Primer_ in the following manner:

1. The Verhulst logistic equation as a base to model mutualism
2. Two-species mutualism   
   2.1. Including the interaction term   
   2.2 Phase plane   
   2.3 Analysis   
   2.4 Modifications   
      2.4.1 Receive benefits at low densities   
      2.4.2 Confer benefits at high densities   
      2.4.3 Facultative and obligate mutualisms   
3. Additional variables and further complexities   
4. The intersect of mutualism theory and biology   
   4.1. Two-speices interactions   
   4.2. Three-species interactions   
   4.3. $n$-species inteactions

## The Verhulst logistic equation as a base to model mutualism

The logisic equation had at least six different origins (e.g., [Lloyd](https://www.jstor.org/stable/2172714?seq=1#metadata_info_tab_contents)), with the two most relevant being Verhulst's and Pearl and Reed's (see Mallet for some historical background). I will present the equations in this _Primer_ as per-capia growth rate for the sole reason that dividing by density on both sides makes the right-hand side a bit easier to read. Verhulst's logistic equation reads

$$\frac{1}{N}\frac{\mathrm{d}N}{\mathrm{d}t} = r - \alpha N$$,

and Pearl and Reed's reads

$$\frac{1}{N}\frac{\mathrm{d}N}{\mathrm{d}t} = r\left(\frac{K - N}{K}\right)$$.

The difference between the two are somewhat superficial here: the Verhulst model includes a negative crowding coefficient to represent intrasepcific competition, $\alpha$, while the Pearl-Reed model has an equilibirum that is assigned _a priori_, $K$.  For single-species dyanmics these equations are fully equivalent. That is, $K = r/\alpha$.

The main difference between the two equations are the units of the crowding coefficient and positive equilibirum. The units of the crowding coefficient is per-unit of density, $[D^{-1}]$. The units of the positive equilibirum is density, $[D]$.

## Two-species mutualism

### Including the interaction term

But when 2 or more species or populations interact (I will use these words interchangably), this eqvuivalance begins to breakdown. This is because once species begin to interact, their dynamic equilibirum will deviate from the _a priori_ equilibrium, $K$. For competitive interactions, the dynamic equilibrium will be less than the _a priori_ equilibrium. For enemy-victim interactions (e.g., predator-prey, host-pathogen), the enemy's equilibrium will be larger and the victim's equilibrium will be lower than the _a priori_ equilibrium.

In the Pearl-Reed model, there are effectively 3 ways to add the effect of species 2 ($N_2$) on species 1 ($N_1$):

1. Effect on density-independent growth rate:
$$\frac{1}{N_1}\frac{\mathrm{d}N_1}{\mathrm{d}t} = (r + f(N_2))\left(\frac{K - N_1}{K}\right) = r + f(N_2) - \frac{r}{K}N_1 - \frac{1}{K}N_1f(N_2)$$
2. Effect on equilibrium:
$$\frac{1}{N_1}\frac{\mathrm{d}N_1}{\mathrm{d}t} = r\left(\frac{K + f(N_2)- N_1}{K + f(N_2)}\right) = r + \frac{r}{K + f(N_2)}N_1 + \frac{r}{K + f(N_2)}f(N_2)$$
3. Effect on intraspecific competition:
$$\frac{1}{N_!}\frac{\mathrm{d}N_1}{\mathrm{d}t} = r\left(\frac{K - N_1 + f(N_2)}{K}\right) =  r + \frac{r}{K}N_1 + \frac{r}{K}f(N_2)$$

In 1., by adding the effect of species 2 on species 1 to $r$, the model will change the density-independent growth rate; i.e., the growth rate when rare. For some interactions and systems, this is a wholly reasonable way to model interactions. (In fact, I will dig more deeply into this idea below.) For 2. we can add the effect of species 2 on species 1 to the _a priori_ equilibrium, $K$. Notice that it is both in the demonimator and numerator. For 3. we can add the effect of species 2 on species 1 in such a way that it represents the reduction of intraspecific competition. Compare 2. and 3. Interestingly, although they result in the same dynamic equilibirum, the rates of change are different. I have never seen these dynamics differences discussed, but for stronger the effects of species 2 on species 1, the greater the difference rate of change.

In the Verhulst model, there are two main ways to add the effect of $N_2$ on $N_1$:

1. Effect on density-independent growth rate:
$$\frac{1}{N_1}\frac{\mathrm{d}N_1}{\mathrm{d}t} = (r + f(N_2))\left(\frac{r - \alpha N_1}{r}\right) = r + f(N_2) - \alpha N_1 - f(N_2)N_1 - \frac{\alpha}{r}f(N_2)N_1$$
2. Effect of $N_2$ on $N_1$ when $N_1$ is at high densities:
$$\frac{1}{N_1}\frac{\mathrm{d}N_1}{\mathrm{d}t} = r - \alpha N_1 + f(N_2)$$

I have not seen formulation in 1 published, but it can be useful if $N_2$ affects $N_1$ most strongly when $N_1$ is at low densities. The second equation is similar to the 2. and 3. of Pearl-Reed models above, although the affect of $N_2$ on $N_1$ $f(N_2)$ is not scaled by the $r$ or $K$. For simplicity's sake, I will proceed using Verhulst's eqn. 2 for the next sections on phase planes and analysis. Yes, this does slightly deviate from the common Pearl-Reed formulation with $K$, but I will follow the consensus of theoreticians that do not use the Pearl-Reed model. For instance, Chesson (_AREES_, 2000) writes:

> Unfortunately, textbooks muddy the water by parameterizing Lotka-Volterra competition in terms of carrying capacities and relative coefficients of competition.

Ginzburg (_TREE_, 1992), as a nother example. writes:
> . . . the logistic equation, particularly in its common parameterization, [Pearl-Reed model] has been one of the greatest disservices to theoretical ecology.



## Phase plane
thgere is smoe mode text


## Analysis
thgere is smoe mode text


## Modifications
thgere is smoe mode text


### Receive benefits at low densities
thgere is smoe mode text


### Confer benefits at high densities
thgere is smoe mode text


### Facultative and obligate mutualisms
thgere is smoe mode text


## Additional variables and further complexities
thgere is smoe mode text


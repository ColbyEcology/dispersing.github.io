---
title: "Research"
layout: single
permalink: /Research/
author_profile: true

header:
  overlay_color: "#000"
  overlay_filter: "0.5"
  overlay_image: bluebeetles.jpg
excerpt: "I study the ecology of species interactions, with a focus on both  positive species interactions and species interactions across space . . ."

---
{% include base_path %}

My research can largely be broken into three areas, which I describe in some more detail below.
1. I first describe my main focus on the population and community ecology of [mutualistic interactions](#mutualism)&mdash;interactions where two or more species have enhanced survival or reproduction in each others' presence. It turns our that these interactions are incredibly important and but are still not well-integrated in conceptual or theoretical frameworks in  ecology.
2. Second, I describe my interests in [spatial ecology](#space).
3. Last, I describe my interests in the [R environment as a tool](#REnv) for ecological problems.


## Mutualism&#58; how positive species interactions shape populations and communities <a name="mutualism"></a>

As a simple thought experiment, consider iterating the effect of mutual benefit between two populations: they would feed off each other's growth and grow without any bounds.  And obviously, we don't see infinitely-large populations in nature.  My main question in studying this common type of population interaction is therefore: how is the growth of mutualist populations bounded? I am currently addressing this question through development of mathematical models in the lab of [Karen Abbott](http://www.case.edu/artsci/biol/abbottlab/CWRU/Home.html) at Case Western Reserve University as a postdoctoral research associate.  In our work, we have found a way to re-envision different types (e.g., service, food, defense) of mutualistic interactions, developed a theory within this new framework, and generated a set of critical experiments that will allow me to test our predictions and assumptions in the future.

## Dispersal and spatial ecology&#58; the consequences ecology happening in two dimensions <a name="space"></a>
Dispersal describes the spatial or temporal displacement of organisms.  All life as we know it disperses: some organisms actively seek new habitats, some organisms are passively dispersed to new habitats, and some organisms remain inactive or suspended until conditions are right, which is dispersal through time.  A major part of my research interests is understanding **how dispersal effects ecological and evolutionary dynamics**.  For my dissertation, I described a mechanism for dispersal for a species of plant that was previously unknown [Moore and Vander Wall, *Plant Eco.*, 2015](/Publications).  This made me become more interested in the relationship between disperser behaviour and patterns of seed deposition.  The curves to the right, for example, are the same distribution, but displayed as the probability of dispersal to a point (top) and probability of dispersal to a given distance (i.e., annulus; bottom).

I also co-developed the North American Seed Dispersal Project, where we quantified range and distributional characteristics of plant species across the continent by different vectors of dispersal ([Vander Wall and Moore, <i>Global Eco. and Biogeog.</i>, early view](/Publications)) and how that relates to the animals that disperse them (Dittel, Moore, and Vander Wall, in prep.).

I have also pursued several modeling projects to look at population dynamics and disease in a spatial-modeling context.

## The R environment as a tool for ecological problems <a name="REnv"></a>
I have become increasingly interested in the use of computational tools to better understand ecology.  Whether its for statistical tests, mathematical analysis, or simulation, I am interested in using computers to help us understand complex ecological systems.

I have a [GitHub](https://github.com/dispersing) site where I try to openly develop, share, and help others develop software.  Most prominently, I have co-developed a package in [R](https://www.r-project.org) called **QPot** that is a tool analyze two-dimensional stochastic differential equations.  It can be found on [CRAN](https://cran.r-project.org/web/packages/QPot/index.html) or [GitHub](https://github.com/bmarkslash7/QPot), and its associated accepted paper on [The R Journal](https://journal.r-project.org/archive/accepted/)'s website or my [Publications page](/Publications).

I am currently working on a spatial modeling project and in the process of creating R's first library for creating hexagonal lattices and spatial modeling.  Below is a spatially structured, two-host disease model, with each host a different color and the brightness of the color being the relative density of infection. For more information, here's a short blog post on the inspiration and process: [link](/Hexagons.html).

[![Hex video](/images/HexImg.png)](/images/hex_r5.mp4)
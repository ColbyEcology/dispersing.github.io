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
<a name="top"></a>

{% include base_path %}

My research can generally be categorized into three areas (follow the link to a section below)&#58; [mutualistic interactions](#mutualism), [spatial ecology](#space), and the [R environment as a tool for ecological problems](#REnv).

<a name="mutualism"></a>

## Mutualism&#58; how positive species interactions shape populations and communities
Mutualism has been considered by many to be the most common type of ecological interaction.  For example, forests are teeming with mycorrhizal mutualisms between trees and the fungi that live among their roots (listen to the amazing Radiolab piece on these interactions&#58; [*From Tree to Shining Tree*](http://www.radiolab.org/story/from-tree-to-shining-tree/)), the bustling and biodiverse oceanic reefs' foundation is built upon mutualisms between coral and zooxanthellae, and over 90% of the foods we eat are the result of pollination mutualisms between plants and insects.  Despite mutualism's obvious importance, however, it has been somewhat of a nuisance to study for both experimental and theoretical biologists.

As an over-simplified thought experiment to understand why mutualism presents a theoretical problem, first consider iterating the effect of mutual benefit between two species.  Imagine one species benefits the other, the second species received benefits and benefits the first, the first species received the benefits and benefits the second, and so on.  What this ultimately leads to is [positive feedback](https://en.wikipedia.org/wiki/Positive_feedback).  (Yes, this is just like the positive feedback between guitar pickups and amplifiers in [NIRVANA](https://youtu.be/i0g8toTz-ek?t=14)'s music.)

For the past two years I have been working with [Karen Abbott](http://case.edu/artsci/biol/abbottlab/Home.html) at Case Western Reserve University trying to better understand the problem of mutualistic feedback and develop a theoretical framework that doesn't result in unrealistic, infinite population sizes.  Our two main approaches have both included expanding on classic Lotka-Volterra mutualism models to include (1) **biologically realistic intraspecific density dependence** and (2) **creating a new, synthetic framework for understanding and modeling mutualisms**.  We have several projects in the works, and the first of which is a preprint that can be found on bioRvix, here: [link](http://biorxiv.org/content/early/2017/02/13/108175).

[Back to top](#top)

<a name="space"></a>

## Dispersal and spatial ecology&#58; the consequences ecology happening in two dimensions
Dispersal describes the spatial or temporal displacement of organisms.  All life as we know it disperses: some organisms actively seek new habitats, some organisms are passively dispersed to new habitats, and some organisms remain inactive or suspended until conditions are right, which is dispersal through time.  A major part of my research interests is understanding **how dispersal effects ecological and evolutionary dynamics**.  For my dissertation, I described a mechanism for dispersal for a species of plant that was previously unknown ([Moore and Vander Wall, *Plant Eco.*, 2015](/Publications)).  This made me become more interested in the relationship between disperser behaviour and patterns of seed deposition.

I also co-developed the North American Seed Dispersal Project, where we quantified range and distributional characteristics of plant species across the continent by different vectors of dispersal ([Vander Wall and Moore, <i>Global Eco. and Biogeog.</i>, 2016](/Publications)) and how that relates to the animals that disperse them ([Dittel, Moore, and Vander Wall, in review](/Publications)).

I have also pursued several modeling projects to look at population dynamics and disease in a spatial-modeling context (see a few blogs on it: [here](/Hexagons) and [here](/DynamicHexagonsInR)).

[Back to top](#top)

<a name="REnv"></a>

## The R environment as a tool for ecological problems
I have become increasingly interested in the use of computational tools to better understand ecology.  Whether its for statistical tests, mathematical analysis, or simulation, I am interested in using computers to help us understand complex ecological systems.

I have a [GitHub](https://github.com/dispersing) site where I try to openly develop, share, and help others develop software.  Most prominently, I have co-developed a package in [R](https://www.r-project.org) called **QPot** that is a tool analyze two-dimensional stochastic differential equations.  It can be found on [CRAN](https://cran.r-project.org/web/packages/QPot/index.html) or [GitHub](https://github.com/bmarkslash7/QPot), and its associated paper on [The R Journal](https://journal.r-project.org/archive/2016/RJ-2016-031/index.html)'s website or my [Publications page](/Publications).

I am currently working on a spatial modeling project and in the process of creating R's first library for creating hexagonal lattices and spatial modeling.  Below is a spatially structured, two-host disease model, with each host a different color and the brightness of the color being the relative density of infection based on a collaboration with [Katie Dixon](http://katherinedixon.weebly.com/). For more information, here's a short blog post on the inspiration and process: [link](/Hexagons).

<video width="320" height="320" controls>
    <source src="/images/hex_r5.mp4" type="video/mp4">
</video>

[Back to top](#top)

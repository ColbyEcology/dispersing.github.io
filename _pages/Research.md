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

My research can generally be categorized into three areas (follow the link to a section below)&#58; [mutualistic interactions](#mutualism), [spatial ecology](#space), and the [R environment as a tool for ecological problems](#REnv).

## Mutualism&#58; how positive species interactions shape populations and communities <a name="mutualism"></a>

Mutualism has been considered by many to be the most common type of ecological interaction.  For example, forests are rife with mycorrhizal mutualisms between trees and the fungi that live between their roots (listen to the amazing Radiolab piece on these interactions&#58; [*From Tree to Shining Tree*](http://www.radiolab.org/story/from-tree-to-shining-tree/)), the bustling and biodiverse oceanic reefs' foundation is built upon mutualisms between coral and zooxanthellae, and over 90% of the foods we eat are the result of pollination mutualisms between plants and insects.  Despite mutualisms' obvious importance, however, it has been somewhat of a nuisance to study for both experimental and theoretical biologists.

As an over-simplified thought experiment to understand why mutualism presents a theoretical problem, first consider iterating the effect of mutual benefit between two species.  Imagine one species benefits the other, the second species received benefits and benefits the first, the first species received the benefits and benefits the second, and so on.  What this ultimately leads to is [positive feedback](https://en.wikipedia.org/wiki/Positive_feedback).  (Yes, this is just like the positive feedback between a microphone and amplifier in [NIRVANA's music](https://youtu.be/i0g8toTz-ek?t=14).)

What would happen is that they would feed off each other's growth and grow infinitely large!  And obviously, we don't see infinitely-large populations in nature.  

This has been a problem with ecologists' understanding of mutualism since at least Darwin&mdash;and in current ecology.  I have empirically studied seed0dispersal mutualisms, and in my current position, [Karen Abbott](http://www.case.edu/artsci/biol/abbottlab/CWRU/Home.html) and I have been reconceptualizing the conceptual and theoretical bases of mutualism to better integrate in contemporary ecological thinking.

## Dispersal and spatial ecology&#58; the consequences ecology happening in two dimensions <a name="space"></a>
Dispersal describes the spatial or temporal displacement of organisms.  All life as we know it disperses: some organisms actively seek new habitats, some organisms are passively dispersed to new habitats, and some organisms remain inactive or suspended until conditions are right, which is dispersal through time.  A major part of my research interests is understanding **how dispersal effects ecological and evolutionary dynamics**.  For my dissertation, I described a mechanism for dispersal for a species of plant that was previously unknown [Moore and Vander Wall, *Plant Eco.*, 2015](/Publications).  This made me become more interested in the relationship between disperser behaviour and patterns of seed deposition.  The curves to the right, for example, are the same distribution, but displayed as the probability of dispersal to a point (top) and probability of dispersal to a given distance (i.e., annulus; bottom).

I also co-developed the North American Seed Dispersal Project, where we quantified range and distributional characteristics of plant species across the continent by different vectors of dispersal ([Vander Wall and Moore, <i>Global Eco. and Biogeog.</i>, early view](/Publications)) and how that relates to the animals that disperse them (Dittel, Moore, and Vander Wall, in prep.).

I have also pursued several modeling projects to look at population dynamics and disease in a spatial-modeling context.

## The R environment as a tool for ecological problems <a name="REnv"></a>
I have become increasingly interested in the use of computational tools to better understand ecology.  Whether its for statistical tests, mathematical analysis, or simulation, I am interested in using computers to help us understand complex ecological systems.

I have a [GitHub](https://github.com/dispersing) site where I try to openly develop, share, and help others develop software.  Most prominently, I have co-developed a package in [R](https://www.r-project.org) called **QPot** that is a tool analyze two-dimensional stochastic differential equations.  It can be found on [CRAN](https://cran.r-project.org/web/packages/QPot/index.html) or [GitHub](https://github.com/bmarkslash7/QPot), and its associated accepted paper on [The R Journal](https://journal.r-project.org/archive/accepted/)'s website or my [Publications page](/Publications).

I am currently working on a spatial modeling project and in the process of creating R's first library for creating hexagonal lattices and spatial modeling.  Below is a spatially structured, two-host disease model, with each host a different color and the brightness of the color being the relative density of infection. For more information, here's a short blog post on the inspiration and process: [link](/Hexagons.html).

<video width="320" height="320" controls>
    <source src="/images/hex_r5.mp4" type="video/mp4">
</video>
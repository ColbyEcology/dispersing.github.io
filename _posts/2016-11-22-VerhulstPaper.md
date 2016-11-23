---
title: Verhulst's original formulation of the logistic equation
---

I was recently reading Verhulst's original paper in *Correspondance mathematique et physique, Vol. X* (1838), entitled *Notice sur la loi que la
populations suit dans son accroissement*.  Here's a link in to the GoogleBooks site: [link](https://books.google.com/books?id=8GsEAAAAYAAJ&pg=PA113#v=onepage&q&f=false).  In this paper, Verhulst first communicates the logistic equation.  I went to it to confirm that when he formulated the equation, that it did not include $$K$$, as often mis-cited in ecology papers and books.  In the paper below, he bridges Malthusian growth, $$m$$ with a second-order (and higher) parameter that retards growth, $$\varphi p$$.<sup>2</sup>

<hr>

It is know that the celebrated Malthus established as a principle that the human population tens to increase according to geometric progression, so as to double after a certain period of time, for example, every twenty-five years.  This proposition is incontestable, if one neglects the ever increasing difficulty of procuring supplies when the population has acquired a certain degree of agglomeration, or the resources which the population uses in its growth, even when the society is still nascent, such as a greater division of labor, the existence of a regulation government and means of defense which insure the public tranquility, etc.

In effect, *all things being equal in other respects*, if a thousand souls have become two thousand after twenty-five years, these two thousand will become four thousand after the same lapse of time.

In our old European societies, where the fertile land has been cultivated for a long time, the work needed to improve a field already under cultivation can add little to its productivity; admitting that, in the first twenty-five years, the yield of the soil is doubled, in the second period, one will barely succeed in making it produce perhaps a third more.  The virtual increase of the population thus finds a limit in the extent and fertility of the country, and the population, as a consequence, tend more and more to become stationary.

This is not always the case, because exceptions do exits; for example, when a civilized people cultivates a fertile territory, previously uninhabited, or when it has an industry which can provide great temporary benefits.  In such instances, a large family becomes an asset, and the second generation finds it easier to establish itself than the first, because unlike the first, it does not have to struggle against the obstacles that the virgin state of the land presented to the first settlers.

In order to determine the rate at which the population grows in a given country, it is necessary to divide the increase of the population of each year by the population which produced it.  This ration, being independent of the absolute size of the population, can be regarded as the measure of this rate.  If it is constant, the population grows in a geometric progression; if it is increasing, the progression is more than geometric, and of course less than geometric if it is decreasing.

Various hypotheses can be made on the retarding or sum of obstacles opposing the indefinite development of the population.  Mr. *Quetelet* supposes it proportional to *the square of the rate at which the population tends to grow*.<sup>1</sup>

It is similar to the motion of a moving body which falls, through a viscous medium.  The results of this comparison concur in a satisfactory manner with the statistical data, and with those which I obtained by my own formulas, when an indefinitely increasing density is attributed to the strata of the medium traversed.

The growth of the population necessarily has a limit, if only in the extent of the land indispensable for the housing of that population.  When a nation has consumed all of the fruits of its fields, it can, it is true, procure provisions form other nations by the exchange of its products, and thus support a new increase of population.  But it is evident that these imports must have limits, and must be checked, even long before the entire surface of the country is covered in towns.  All the formulas by which one may attempt to represent the law of populations must therefore satisfy the condition of allowing for a *maximum* which will on;y be reached in an extremely remote era.  This *maximum* will be the total of the population which tends to become stationary.

I have tried for a long time to determine by analysis a probability law of population; but I have abandoned this type of research because the available data is too limited to allow the verification of my formula, so as to have no question about its accuracy.  However, the course which I followed seemed to lead me to the understanding of the actual law, which when sufficient data becomes available, will support my speculations.  Therefore, I thought it proper to acquiesce to the invitation of Mr. *Quetelet* and to present them in this article.

It $$p$$ is the population, then $$dp$$ is an infinitesimally small increase that is received in a very short period of time $$dt$$.  If the population increase by geometric progression, we would have the equations $$dp/dt = mp$$.  However, as the rate of population growth is slowed by the very increase in the number of inhabitants, we must subtract from $$mp$$ an unknown of $$p$$, so that the formula to be integrated can be written as

$$
\frac{dp}{dt} = mp - \varphi (p)
$$

The simplest hypothesis that can be made on the form of the function $$\varphi$$ is to suppose that $$\varphi (p) = np^2$$.  Then the integral of the above equation is found to be

$$
t = \frac{1}{m}[\log.p - \log.(m-np)] + \text{Constant}
$$

and three observations will be sufficient to determine the two coefficients constants $$m$$ and $$n$$ and the arbitrary constant.

By solving the last equation for $$p$$, it becomes

$$
p = \frac{mp'e^{mt}}{np'e^{mt} + m - np'}
$$

where $$p'$$ designates the population at the boundary condition, $$t = 0$$, and $$e$$ is the base of napierian logarithms.  If we put $$t = \infty$$, we see that the corresponding value of $$p$$ is $$P = m/n$$.  This is, therefore, the upper limit of the population.

I tried successively:

$$
\varphi p = np^2, \varphi p = np^3, \varphi p = np^4, \varphi p = n \log.p;
$$

and the differences between the populations calculated and those furnished by observation were approximately the same.

When the population increases more rapidly than geometric progression, the term $$-\varphi$$ becomes $$+ \varphi$$; the differential equation can be integrated as in the preceding cases, but it must be understood that there can no longer be a maximum population.

I calculated some tables which follow from equation (1).  The figures for France, Belgium and Essex county were drawn from official documents.  Those concerning Russia are found in the work of Dr. Sadler, Law of Populations, and I cannot guarantee their authenticity, not knowing by what method they were obtained.  I could ave extended the tables for France and Belgium up until 1837 by means of the Annuals published in these two countries since 1833, and thus verified my formula; but my other commitments did not give me sufficient time.  This work was finished in 1833, and I have not touched it since.

I will remark in passing that the table which concerns France seems to show that the formula is very accurate, as the observations deal with larger numbers and were carried out more carefully.  Nevertheless, the future alone will be able to reveal to us the true method of operation of the retarding force which we have represented by $$\varphi p$$.

<sup>1</sup>*Essai de physique sociale*, tome 1<sup>er</sup>, p.277.

<sup>2</sup>Tables not shown in this document; emphases are Verhulst's
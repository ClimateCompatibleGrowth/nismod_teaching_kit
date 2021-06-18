---
title: Mini-Lecture 10.3 - Infrastructure systems reliability analysis
---

# Metadata

## Keywords

-   Spatial dependence

-   Widespread damages

## Authors

-   Olivia Becher

## Short description

This mini-lecture discusses the limitations of the traditional approach
for calculating the exposure of infrastructure to natural hazards, using
return period maps. This is followed by a comparison between the
traditional approach and two alternative approaches for quantifying the
exposure of infrastructure to natural hazards.

## Learning objectives

-   To recognise that hazards do not only incur damages locally but are
    associated with a spatial footprint which may incur widespread
    losses

-   To distinguish between assumptions of full dependence, full
    independence and partial dependence for aggregating risk analysis at
    multiple asset locations.

# Lecture content

## Introduction

Given that many hazards are driven by large-scale weather systems, if
one location or infrastructure asset is affected by an extreme event, it
is likely that nearby assets will also be affected by the same event.
However, the standard approach is to analyse the likelihood of hazards
at individual locations independent from one another.

The severity of a hazard, such as a flood, is typically communicated
through either the annual exceedance probability or the return period.
For example, an event with a 100‐year return period is, on average,
likely to occur once every 100 years but has a 1% annual exceedance
probability of occurring in any given year.

The return period of a certain event, such as a 100-year flood event,
can be determined by fitting an extreme‐value model to gauged data.
However, this traditional approach fails to account for any
relationships between gauge measurements in different locations and at
different times. Statisticians refer to these relationships as spatially
and temporally dependent.

How we handle the spatial dependence of hazards between multiple
locations is of particular interest for stakeholders that are interested
in conducting risk assessments at a large-scale, including governments,
insurance providers and planners.

## Spatial footprint of flood events

Figure 10.3.1 shows three flooding events that occurred in the UK, where
discs represent how extreme the streamflow recorded at each gauging
station was relative to the historical record at each gauge. The
widespread spatial footprint of each flood event can therefore be
identified. The spatial footprint of each major event illustrated in the
figure resulted in extensive human and economic losses.

The clusters of losses have implications for various stakeholders,
including governments/insurance providers/planners. Insurance providers,
for example, would have an interest in ensuring that their customers are
not all likely to suffer damage during an extreme event at the same
time.

**Figure 10.3.1:** The spatial extent of three major flood events that
occurred in the UK, where discs represent how extreme the streamflow
recorded at each gauging station was relative to the historical record
at each gauge [@Towe2018]

## Quantifying the spatial dependence between infrastructure damages

To quantify the risk of flood-induced damage occurring at multiple
locations simultaneously, it is necessary to quantify the spatial
dependence between variations in hazard severity at multiple locations.

This is illustrated for flooding in Figure 10.3.2, where three
properties are shown in red, green and blue. A statistical conditional
exceedance model is fitted to gauged data to determine the joint
probability of extreme river flows or sea levels at multiple
locations. By estimating the economic losses associated with extreme
river flows for each property via damage curves, the joint probability
of extreme river flows is converted to the joint probability of economic
losses at multiple assets.

**Figure 10.3.2:** Schematic of a joint probability model for
calculating the spatial dependency between flood damages at multiple
locations [@Lamb2010]

## Comparison between approaches for measuring spatial dependencies

Thus, hazards, and hazard-induced damages, have a complex spatial
pattern and are spatially and temporally connected. However, in risk
analysis, the strength of connection, or dependence, is rarely
considered.

Rather, one of two common assumptions are adopted when undertaking risk
analysis: one is to assume complete dependence across all considered
locations/assets; the other is to assume that hazard likelihood at each
location/asset is independent of all others.

Each of these assumptions distorts how risks aggregate across the
spatial scale. The distortion provided by adopting either of these two
approaches are compared in Figure 10.3.3.

-   If complete dependence is assumed (red curve), then it is assumed
    that all sites behave the same. This results in a significant
    underestimation of the likelihood that at least one of multiple
    sites experiences an extreme event.

-   In the case of independence, where there is no relationship between
    any of the river flow gauges (blue curve), an overestimation of the
    likelihood of at least one extreme event occurring across multiple
    sites is observed.

-   The black curve takes into account the true nature of dependence
    between flood events and, therefore, provides the most realistic
    understanding of the probability of flooding at multiple sites at a
    large scale.

**Figure 10.3.3:** Comparison of probability of observing extreme river
flow at least one gauge in a given year for each of the three dependence
approaches: the red curve represents the assumption of complete
dependence; the blue curve represents the assumptions of complete
independence; and the black curve represents the true nature of
dependence between river flows [@Towe2018].

## Implications of spatial dependence for risk assessments

How we analyse the systemic risks posed by hazards is important for
insurance and risk analysis undertaken at the asset level in the context
of network effects.

The reason why spatial dependence is important for insurers is that
insurance schemes must be designed to minimise the likelihood of a large
portion of customers requiring insurance payouts at the same time.
Large-scale hazards could overwhelm the protective capacity provided by
insurance. Therefore, it is important that insurance providers have a
spatially diversified portfolio of assets that are unlikely to be
affected by hazards at the same time.

Another reason why accounting for the likelihood of widespread hazards
is important is for analysing disruptions and prioritising adaptation
infrastructure. If multiple infrastructure assets are taken
out-of-service at the same time due to, for example, large-scale
flooding, this could pose a significantly greater disruption compared to
if the disruption caused by each asset were considered independently,
especially if the assets provide substitutional capacity for each other.
Adaptation schemes are prioritised on the basis of where disruptions are
greatest; thus, accounting for the likelihood of widespread disruptions
could ensure there is sufficient substitutional capacity during such
events.

The next lecture explores how disruptions propagate through
infrastructure systems in detail.

## Summary

This mini-lecture discussed the limitations of not accounting for the
spatial dependence between extremes for risk analysis. You should now be
able to recognise that hazards are often associated with an expensive
spatial footprint, which has implications in terms of incurring
widespread losses. You should also be able to distinguish between
assumptions of full dependence, full independence and partial dependence
between hazards at multiple locations for risk analysis.

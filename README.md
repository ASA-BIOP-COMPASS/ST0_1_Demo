# ST0_1_Demo

# Bootstrap Confidence Interval Estimator

This repository contains an R implementation of the **Non-parametric Bootstrap** method to estimate the 95% Confidence Interval (CI) for a population mean.

## 📖 What is Bootstrapping?

Bootstrapping is a resampling technique used to estimate statistics on a population by sampling a dataset with replacement. It allows us to calculate measures of accuracy (like standard errors or confidence intervals) to sample estimates without making strong assumptions about the distribution of the underlying population (e.g., assuming normality).

### The Math

Given a sample $X = \{x_1, x_2, ..., x_n\}$, we:

1.  Resample $n$ observations from $X$ **with replacement** to create a bootstrap sample $X^*$.
2.  Compute the statistic of interest (e.g., the mean $\bar{x}^*$) for this resample.
3.  Repeat this process $B$ times (typically $B=1000$ or $10,000$).
4.  Construct the confidence interval from the resulting distribution of $\bar{x}^*$.

For a $95%$ confidence interval using the percentile method, we find values such that:

$P(\theta_{2.5\%} \leq \bar{X} \leq \theta_{97.5\%}) = 0.95$

## 📊 Illustration

The code generates a histogram showing the distribution of the bootstrap means.

* **Blue Line:** The observed mean of our original sample.
* **Red Dashed Lines:** The 95% Confidence Interval boundaries.

![Bootstrap Distribution](plots/bootstrap_plot.png)

## 🚀 How to Run

1.  **Clone this repository** (or download the files).
2.  Open `bootstrap_analysis.R` in **RStudio** or your preferred R environment.
3.  Run the script.
4.  Check the console for the calculated CI values (Lower and Upper bounds).
5.  Check the `plots/` folder for the generated visualization (`bootstrap_plot.png`).

## 📦 Requirements

* R (4.0.0 or higher)
* `ggplot2` package

To install the requirement, run this in your R console:

```r
install.packages("ggplot2")

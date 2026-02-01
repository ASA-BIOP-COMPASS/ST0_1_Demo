# ST0_1_Demo

# Bootstrap Confidence Interval for a Point Estimator

This repository contains an R implementation of the **Non-parametric Bootstrap** method to estimate the 95% Confidence Interval (CI) for a Point Estimator.

## 📖 What is Bootstrapping?

Bootstrapping is a resampling technique used to make statistical inference by sampling data with replacement. It allows us to calculate measures of accuracy (like standard errors or confidence intervals) to estimators.

### Method

Given a sample $X = (\{x_1, x_2, ..., x_n\})$, we:

1.  Set $B$ (e.g., $B=1000$) as the number of Bootstrap iterations.
2.  Within a Bootstrap iteration $b$ ($b = 1, ..., B$),
    2.1   Resample $n$ observations from $X$ **with replacement** to create a bootstrap sample $X^*_b$.
    2.2   Compute the statistic of interest (e.g., the mean of $X^*_b$) for this resample, denoted as $u^*_b$.
3.  Obtain Bootstrap samples $u^* = (\{u^*_1, ..., u^*_B\})$

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

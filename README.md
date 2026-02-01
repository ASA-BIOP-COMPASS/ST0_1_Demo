
# Nonparametric Bootstrap Confidence Interval for a Parameter of Interest

This repository contains an R implementation of the **Nonparametric Bootstrap** method to estimate the 95% Confidence Interval (CI) for a parameter of interest. 

## 📖 Introduction

The nonparametric bootstrap is a statistical resampling technique used to estimate the precision of sample statistics (like mean, median, or standard error) by repeatedly sampling with replacement from the original data. 


## :gear: Method

Given a sample $X = (\{x_1, x_2, ..., x_n\})$, we:

1.  Set $B$ (e.g., $B=1000$) as the number of Bootstrap iterations.
   
3.  Within a Bootstrap iteration $b$ ($b = 1, ..., B$),

    2.1   Resample $n$ observations from $X$ **with replacement** to create a bootstrap sample $Y_b$.

    2.2   Compute the parameter of interest (e.g., the mean of $Y_b$) for this resample, denoted as $u_b$.
    
4.  Obtain Bootstrap samples $u = (\{u_1, ..., u_B\})$.

5.  Obtain 95% confidence intervals of the parameter of interest as 2.5% and 97.5% quantiles from $u$.
   

## 📊 Illustration

The code generates a histogram showing the distribution of the bootstrap means.

* **Blue Line:** The observed mean of our original sample.
* **Red Dashed Lines:** The 95% Confidence Interval boundaries.


## 🚀 How to Run

1.  **Clone this repository** (or download the files).
2.  Open `bootstrap_analysis.R` in **RStudio** or your preferred R environment.
3.  Run the script.
4.  Check the console for the calculated CI values (Lower and Upper bounds).

## 📦 Requirements

* R (4.0.0 or higher)
* `ggplot2` package


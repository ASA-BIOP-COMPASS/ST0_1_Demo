# Load necessary library
if (!require(ggplot2)) install.packages("ggplot2")
library(ggplot2)

# Set seed for reproducibility
set.seed(42)

# ==========================================
# 1. Generate Synthetic Data
# ==========================================
# Imagine we have heights (in cm) of 50 plants
# The true population mean is 150, but our sample is noisy
original_sample <- rnorm(n = 50, mean = 150, sd = 15)

# Calculate the Point Estimate (Observed Mean)
observed_mean <- mean(original_sample)

# ==========================================
# 2. Perform Bootstrap Resampling
# ==========================================
# Number of bootstrap replicates
B <- 10000

# Initialize a vector to store bootstrap means
bootstrap_means <- numeric(B)

# Loop to resample with replacement
for (i in 1:B) {
  # Resample with replacement
  resample <- sample(original_sample, size = length(original_sample), replace = TRUE)
  # Calculate mean of the resample
  bootstrap_means[i] <- mean(resample)
}

# ==========================================
# 3. Compute 95% Confidence Interval
# ==========================================
# We use the Percentile Method: taking the 2.5th and 97.5th percentiles
alpha <- 0.05
ci_lower <- quantile(bootstrap_means, alpha / 2)
ci_upper <- quantile(bootstrap_means, 1 - alpha / 2)

cat("Observed Mean:", round(observed_mean, 2), "\n")
cat("95% CI Lower Bound:", round(ci_lower, 2), "\n")
cat("95% CI Upper Bound:", round(ci_upper, 2), "\n")

# ==========================================
# 4. Generate and Save Illustration
# ==========================================
# Create a data frame for ggplot
plot_data <- data.frame(Means = bootstrap_means)

# Create the plot
p <- ggplot(plot_data, aes(x = Means)) +
  geom_histogram(bins = 30, fill = "skyblue", color = "white", alpha = 0.7) +
  # Add lines for CI
  geom_vline(aes(xintercept = ci_lower), color = "red", linetype = "dashed", size = 1) +
  geom_vline(aes(xintercept = ci_upper), color = "red", linetype = "dashed", size = 1) +
  # Add line for Observed Mean
  geom_vline(aes(xintercept = observed_mean), color = "blue", size = 1.2) +
  # Labels and Title
  labs(title = "Bootstrap Distribution of Sample Means",
       subtitle = paste("95% CI: [", round(ci_lower, 2), ", ", round(ci_upper, 2), "]"),
       x = "Bootstrap Mean Estimates",
       y = "Frequency") +
  theme_minimal() +
  annotate("text", x = ci_lower, y = 0, label = "Lower CI", vjust = -1, color = "red", angle = 90) +
  annotate("text", x = ci_upper, y = 0, label = "Upper CI", vjust = -1, color = "red", angle = 90)

print(p)

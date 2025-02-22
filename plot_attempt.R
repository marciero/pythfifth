# Load necessary library
library(ggplot2)

# Define parameters
m <- 200
r <- 3/2  # The ratio for Pythagorean fifths

# Generate the Pythagorean scale
pythscale <- data.frame(
    k = 0:m,
    theta = -2 * pi * (0:m) * log2(r) + pi/2
)

# Generate the Even-tempered scale
evenscale <- data.frame(
    k = 0:12,
    theta = -7 * pi * (0:12) / 6 + pi / 2
)

# Create the plot for Pythagorean scale
pyth_plot <- ggplot(pythscale, aes(x = theta, y = rep(1, length(theta)))) +
    geom_point(color = "blue", size = 0.5) +
    coord_polar() +
    theme_void() +
    ggtitle("Pythagorean Scale") +
    theme(plot.title = element_text(hjust = 0.5))

# Create the plot for Even-tempered scale
et_plot <- ggplot(evenscale, aes(x = theta, y = rep(1, length(theta)))) +
    geom_point(color = "red", size = 1) +
    coord_polar() +
    theme_void() +
    ggtitle("Even-Tempered Scale") +
    theme(plot.title = element_text(hjust = 0.5))

ggplot(pythscale) +
    geom_point(data = pythscale, aes(x = theta, y = rep(1, length(theta))), color = "blue", size = 0.5) +
    geom_point(data = evenscale,  aes(x = theta, y = rep(1, length(theta))), color = "red", size = 1) +
    coord_polar() +
    theme_void() +
    ggtitle("Pythagorean Scale") +
    theme(plot.title = element_text(hjust = 0.5))



pyth_plot <- function(m, r) {

    # Generate the Pythagorean scale
    pythscale <- data.frame(
        k = 0:m,
        theta = -2 * pi * (0:m) * log2(r) + pi/2
    )

    # Create the plot
ggplot(pythscale, aes(x = theta, y = rep(1, length(theta)))) +
        geom_point(color = "blue", size = 0.25) +
        coord_polar() +
        theme_void() +
        ggtitle("Pythagorean Scale") +
        theme(plot.title = element_text(hjust = 0.5))

}

# Example usage of the function
pyth_plot(m = 200, r = 3/2)


# Generate the Pythagorean scale and Even-tempered scale
m <- 200  # Number of Pythagorean scale points
r <- 3/2  # The ratio for Pythagorean fifths

# Pythagorean scale
pythscale <- data.frame(
    k = 0:11,
    theta_p = -2 * pi * (0:11) * log2(r) + pi/2,
    theta_e = (2 * pi * (0:11)) / 12
    )


# Plot the Pythagorean and Even-tempered scales together
ggplot(pythscale) +
    #geom_point(aes(x = theta_p, y = rep(1, 12)), color = "blue", size = 0.5) +
    geom_point(aes(x = theta_e, y = rep(1, 12)), color = "red", size = 1) +
    coord_polar() +
    theme_void()




    # Define parameters
    m <- 11  # Number of Pythagorean scale points (0 to 11)
    r <- 3/2  # The ratio for Pythagorean fifths

    # Generate the Pythagorean scale (using theta_p)
    pythscale <- data.frame(
        k = 0:m,
        theta = -2 * pi * (0:m) * log2(r) + pi/2
    )

    # Generate the Even-tempered scale (using theta_e)
    evenscale <- data.frame(
        k = 0:12,
        theta = (2 * pi * (0:12)) / 12  # Evenly spaced angles
    )

    # Combine the dataframes into one
    pythscale$scale_type <- "Pythagorean"
    evenscale$scale_type <- "Even-Tempered"

    # Bind the data together
    combined_scale <- rbind(pythscale, evenscale)

    # Plot both scales together with normalized polar coordinates
    ggplot(combined_scale) +
        geom_point(aes(x = theta,
                       y = rep(1, nrow(combined_scale)),
                       color = scale_type),
                   size = 1) +
        coord_polar(start = 0) +  # Make sure to start the polar plot at the correct position
        theme_void() +
        ggtitle("Pythagorean Scale and Even-Tempered Scale") +
        theme(plot.title = element_text(hjust = 0.5))

    #############




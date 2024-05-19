read.csv('SharkMeta.csv')
Dat <-("SharkMeta.csv")
View(Dat)
summary(Dat)
head(Dat)
# Load necessary packages
install.packages("ggplot2")
library(ggplot2)

# Load and inspect the data
Dat <- read.csv("SharkMeta.csv")
head(Dat)

# Assuming your data has a column named "Sex" containing the sex types (male, female, unknown)
# You may need to adjust column names accordingly

# Create a bar plot
ggplot(data = Dat, aes(x = SEX)) +
  geom_bar(fill = "mediumblue", color = "green") +
  labs(title = "Distribution of Shark Sexes",
       x = "SEX",
       y = "Count") +
  theme_minimal()
# Create a custom color palette
# Create a bar plot with custom colors and axis labels
ggplot(data = Dat, aes(x = SEX)) +
  geom_bar(fill = my_colors, color = "navy") +
  scale_x_discrete(labels = c("F" = "Female", "M" = "Male", "U" = "Unknown")) +
  labs(title = "",
       x = "Sex",
       y = "Individual tag count") +  # Change y-axis label
  theme_minimal() +
  theme(axis.text = element_text(size = 14, color = "black", face = "plain"),
        axis.title = element_text(size = 14, color = "black", face = "bold"),
        axis.line = element_line(color = "black", size = 0.5),
        panel.grid.major = element_line(color = "gray", linetype = "dotted"),
        panel.grid.minor = element_blank(),
        panel.background = element_rect(fill = "white", color = "black"))






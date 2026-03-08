#T-TEST
#	How many hours do you spend on social media?
# Perform independent t-test
# Scores for hour categories
scores <- c(0.5, 1.5, 3.5, 5) #mid value

# Male Science frequency counts
male_science <- c(2, 8, 12, 44)

# Female Science frequency counts
female_science <- c(4, 22, 36, 12)

# Expand data into individual-level values
male_hours <- rep(scores, male_science)
female_hours <- rep(scores, female_science)

# Perform independent t-test
t.test(male_hours, female_hours)


#CHI-SQUARE TEST
#What is your main purpose of using social media
# Create the contingency table (Males)

purpose_data <- matrix(c(
  12, 25, 10, 9,     # Science
  7,  4,  2, 2,     # Commerce
  6,  7,  4, 4,     # Arts
  15, 17,  3, 6      # Social science
),
nrow = 4,
byrow = TRUE)

# Add row and column names

rownames(purpose_data) <- c("Science", "Commerce", "Arts", "Social science")

colnames(purpose_data) <- c("Study", "Time pass", "Entertainment", "Connect with people")

# Perform Chi-square test

chisq_result <- chisq.test(purpose_data)

# Print result
print(chisq_result)



#PIE CHART:
#Purpose of using Social Media by different faculties

# Create data
purpose <- c("Study", "Entertainment", "Timepass", "To connect with people")
percentage <- c(47, 35, 10, 8)

# Create dataframe
df <- data.frame(purpose, percentage)

# Plot pie chart
pie(df$percentage,
    labels = df$purpose,
    main = "Purpose of Using Social Media")


#MULTIPLE BAR DIAGRAM:
#Social media Usage among different faculties
# Create data
faculty <- c("Science", "Commerce", "Arts", "Social Science")

less_1 <- c(6, 3, 6, 11)
one_two <- c(30, 16, 15, 65)
three_four <- c(48, 17, 17, 29)
more_4 <- c(56, 5, 14, 14)

# Combine into matrix
data <- rbind(less_1, one_two, three_four, more_4)

# Plot multiple bar diagram
barplot(data,
        beside = TRUE,
        names.arg = faculty,
        col = c("orange", "green", "yellow", "brown"),
        xlab = "Faculty",
        ylab = "Number of Students",
        main = "Social Media Usage by Faculty")

# Add legend
legend("topright",
       legend = c("< 1 hour", "1–2 hours", "3–4 hours", "> 4 hours"),
       fill = c("orange", "green", "yellow", "brown"))

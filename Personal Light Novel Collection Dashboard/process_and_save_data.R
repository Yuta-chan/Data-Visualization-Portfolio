# Load necessary libraries
library(stringr)
library(dplyr)
# setwd("/path/to/your/directory")
setwd('/home/lenovo/Escritorio/Projects/Github/personal_books')
# Read the data from the text file
df <- read.delim("books_personal_room.txt", header = TRUE, sep = ',')

# Process the data: extract series number and clean up the title and author fields
df <- df %>%
  mutate(
    n_series = as.integer(str_extract(title, "\\d+")),
    title = str_trim(str_replace(title, "\\d+", "")),
    author = str_trim(author)
  )
df$n_series <- if_else(is.na(df$n_series), 1, df$n_series)
# Print the structure of the dataframe
print(head(df))
print(str(df))
print(unique(df$title))

# Save the cleaned dataframe to a CSV file without row names
write.csv(df, file = 'books_personal_room_clean1.csv', row.names = FALSE)

# Save the cleaned dataframe to an RDS file to preserve data types
saveRDS(df, file = "book_personal_room_clean1.rds")

# Count the books of the same book series
title_counts <- df %>%
  group_by(title) %>%
  summarise(
    # the number of present books is last book number in the series
    'Number of Present Books' = max(n_series)
    )

# Save the counts to an RDS file
saveRDS(title_counts, file = "title_personal_books.rds")

# Count the books with the same author
author_counts <- df %>%
  group_by(author) %>%
  summarise('Number of Present Books' = n())

# Save the counts to an RDS file
saveRDS(author_counts, file = "author_personal_books.rds")

library(shiny)
# setwd("/path/to/your/directory")
setwd('/home/lenovo/Escritorio/Projects/Github/personal_books')
books_author <- readRDS("author_personal_books.rds")
books_title <- readRDS("title_personal_books.rds")
source('ui.R')
source('server.R')

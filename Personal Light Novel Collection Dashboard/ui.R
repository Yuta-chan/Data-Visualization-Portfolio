ui <- fluidPage(
  div(style= 'text-align:center',
      titlePanel("Description of the Books in my room", windowTitle = "Books Dashboard")),
  sidebarLayout(
           sidebarPanel(
             helpText("Create a barplot showing the book count for a selected author from my collection as of January 25th, 2024."),
             selectInput("author",
                         label = "Choose an author",
                         choices = unique(books_author$author),
                         selected = unique(books_author$author)[1]),
             helpText("Create a barplot showing the book count for a selected book series from my collection as of January 25th, 2024."),
             selectInput("title",
                         label = "Choose a book series",
                         choices = unique(books_title$title),
                         selected = unique(books_title$title)[1])
           ),
           mainPanel = (
             tabsetPanel(
               tabPanel("Author", plotOutput("author_barplot") ),
               tabPanel("Book Series Title", plotOutput("title_barplot"))
             )
           )
    )
)

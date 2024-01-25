# Server
server <- function(input, output){
  output$author_barplot <- renderPlot({
    selected_books <- books_author[books_author$author == input$author,]
    barplot(selected_books$`Number of Present Books`,
            names.arg = selected_books$author,
            col = 'magenta',
            xlab = 'Author',
            ylab = 'Number of Present Books',
            ylim = c(0, max(20, max(selected_books$`Number of Present Books`))),
            legend = selected_books$`Number of Present Books`,
            main = paste('Number of Books in my room written by', input$author)
    )
  })
  
  output$title_barplot <- renderPlot({
    selected_books <- books_title[books_title$title == input$title,]
    barplot(selected_books$`Number of Present Books`,
            names.arg = selected_books$title,
            col = 'skyblue',
            xlab = 'Book Series Title',
            ylab = 'Number of Present Books',
            ylim = c(0, max(20, max(selected_books$`Number of Present Books`))),
            legend = selected_books$`Number of Present Books`,
            main = paste('Number of Books in my room from the Book Series', input$title)
    )
  })
}

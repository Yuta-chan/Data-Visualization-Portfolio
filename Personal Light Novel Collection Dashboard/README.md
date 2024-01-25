# Personal Light Novel Collection Dashboard

## Description of the Project and Motivation
This project is a Shiny application designed to visualize and manage a personal collection of light novels.

The motivation behind this dashboard is to have quick insights into the light novels available in my room, especially after a few days of organizing the collection with my mother.

The dataset for the dashboard was diligently compiled by my mother, who learned to record the information on a Macintosh computer. This dashboard is a tribute to her effort and a tool to celebrate the shared joy of light novel collection.

## Files Structure of the Project with Explanation

- `ui.R`: Contains the user interface definition of the Shiny app. It structures how inputs and outputs are displayed in the app.
- `server.R`: Contains the server logic of the Shiny app. It defines how inputs are processed and how the corresponding outputs are generated.
- `global.R`: Contains the global variables and libraries, ensuring they are available in both the UI and server contexts.
- `process_and_save_data.R`: Cleans, transforms, and saves the light novel collection data, preparing it for interactive visualization in the Shiny dashboard. It ensures data integrity and structure, facilitating accurate and insightful visual storytelling.
- `books_personal_room.txt`: The raw dataset file as compiled by my mother.

## Description of How to Use the Code

### Dependencies Installation
Ensure you have R installed on your system. Open R console and run:

```R
install.packages("shiny")
install.packages("dplyr")
install.packages("stringr")
```

### Data Preparation
Navigate to the project's root directory in your terminal or command prompt and execute the process_and_save_data.R script. This script processes the raw data and generates essential datasets for the app. Run the following command:

```bash
Rscript process_and_save_data.R
```

It will generate the following files

- books_personal_room_clean1.csv
- book_personal_room_clean1.rds
- author_personal_books.rds
- title_personal_books.rds

### Launching the app
After processing the data, you can start the Shiny app. In your R console, ensure you're in the project's root directory and execute:

```R
library(shiny)
runApp()
```
Alternatively, if you're using RStudio, you can simply click the Run App button.

### Results visualization

Once the app is running, it will be hosted locally on your machine (usually at http://127.0.0.1:XXXX). Open this address in your web browser to interact with the app and visualize ｍｙ light novel collection. The app will look like

![app_example](https://github.com/Yuta-chan/Data-Visualization-Portfolio/assets/78736744/64ded87d-ab5c-4a70-bf40-3e689bf2b121)


## References
Shiny: https://shiny.rstudio.com/

stringr: https://stringr.tidyverse.org/

## Author and collaborators
Judith Urbina - Author and Developer of the Shiny Dashboard.

Sonia Córdoba - Collaborator, credited for compiling the dataset.

## License

Under MIT License.



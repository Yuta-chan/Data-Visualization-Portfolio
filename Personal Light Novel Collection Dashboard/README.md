# Personal Light Novel Collection Dashboard

## Description of the Project and Motivation
This project is a Shiny application designed to visualize and manage a personal collection of light novels.

The motivation behind this dashboard is to have quick insights into the light novels available in a room, especially after a few days of organizing the collection with my mother.

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

### Compilation and execution
To run the app, set the working directory to the project's root folder and execute the following commands in your R console:

```R
library(shiny)
runApp()
```

### Results visualization

Once the app is running, it will be hosted locally on your machine (usually at http://127.0.0.1:XXXX). Open this address in your web browser to interact with the app and visualize ｍｙ light novel collection.

## References
Shiny: https://shiny.rstudio.com/

stringr: https://stringr.tidyverse.org/

## Author and collaborators
Judith Urbina - Author and Developer of the Shiny Dashboard.

Sonia Córdoba - Collaborator, credited for compiling the dataset.

## License

Under MIT License.



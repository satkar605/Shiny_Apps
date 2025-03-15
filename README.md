# 🖥️ Shiny Apps Collection 

## 📌 Overview
This repository contains **simple Shiny web applications** demonstrating basic functionalities like user input handling, dynamic visualization, and interactive UI components.

## 🚀 Included Apps
### **1️⃣ Ozone Level Histogram**
- 📊 Displays a histogram of ozone levels using R’s built-in `airquality` dataset.
- 🎛️ Users can adjust the number of bins dynamically via a slider.
- 🛠️ Implements real-time updates for interactive visualization.

### **2️⃣ Simple User Input & Output**
- 📝 Collects first name and surname via text input fields.
- 🔄 Displays user input dynamically using `renderText()`.
- 🎨 Uses the **shinythemes** package to apply a modern UI design.
- 🗂️ Built with a `navbarPage` layout for multiple navigation tabs.

## 🛠️ Installation & Running the Apps
To run any of these Shiny apps, follow these steps:

### **1️⃣ Install Required Packages**
Ensure you have **R** and **Shiny** installed. If not, install them using:

```r
install.packages("shiny")
install.packages("shinythemes") # Required for UI theming
```

### **2️⃣ Clone the Repository**
```sh
git clone https://github.com/satkarkarki/shiny-apps.git
cd shiny-apps
```

### **3️⃣ Run the Apps**
Open R or RStudio and execute:

```r
library(shiny)
runApp("ozone_app.R")  # Run the Ozone Histogram app
runApp("user_input_app.R")  # Run the Simple User Input app
```

Alternatively, you can run:

```r
shiny::runGitHub("satkarkarki/shiny-apps")
```

## 📷 Screenshots
_(Add screenshots of the apps to showcase their UI.)_

## 📌 Code Structure
- **`ozone_app.R`** → Ozone Level Histogram Shiny app.
- **`user_input_app.R`** → Simple User Input Shiny app.
- **`README.md`** → Documentation for running and using the apps.
- **`screenshot.png`** → _(Optional) Add an image preview of the apps._

## 📜 License
This project is licensed under the MIT License.

---

🚀 **Developed by Satkar Karki**  

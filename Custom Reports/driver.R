
#' driver.R

data("airlines")

for(i in airlines$carrier) {
    print(i)
    rmarkdown::render("example.Rmd",
                      params = list(carrier = i),
                      output_dir = "reports",
                      output_file = paste0(i, "_report.html")
                      )
}

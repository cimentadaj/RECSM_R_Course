library(webshot)

for (i in 1:4) {

  file_name <-
    paste0(
      "file://",
      normalizePath(
        paste0("repositories/RECSM_R_Course/class_", i,"/Slides/slides.html")
      )
    )
  
  webshot(
    file_name,
    paste0("repositories/RECSM_R_Course/class_", i,"/Slides/slides_", i, ".pdf")
  )
}

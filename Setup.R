install.packages("devtools")
devtools::install_github('Ash706/datadrivencv')
# devtools::install_github("nstrayer/datadrivencv")

datadrivencv::use_datadriven_cv(
  full_name = "Alex Rajewski",
  data_location = "https://docs.google.com/spreadsheets/d/1rn6s548jcW0THDsa-juUtDRC4CovcMGCg4QElyH2nqg/",
  pdf_location = "https://github.com/rajewski/resume/rajewski_cv.pdf",
  html_location = "http://rajewski.github.io/CV/",
  source_location = "https://github.com/rajewski/resume"
)

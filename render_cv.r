# This script builds both the HTML and PDF versions of your CV

# If you wanted to speed up rendering for googlesheets driven CVs you could use
# this script to cache a version of the CV_Printer class with data already
# loaded and load the cached version in the .Rmd instead of re-fetching it twice
# for the HTML and PDF rendering. This exercise is left to the reader.

# Knit the HTML version then the pdf
rmarkdown::render("cv.rmd",
                  params = list(pdf_mode = FALSE),
                  output_file = "cv.html")
pagedown::chrome_print(input = "cv.html",
                       output = "cv.pdf")


rmarkdown::render("resume.rmd",
                  params = list(pdf_mode = FALSE,
                                resume_mode= TRUE),
                  output_file = "resume.html")
pagedown::chrome_print(input = "resume.html",
                       output = "resume.pdf")


# # Knit the PDF version to temporary html location
# tmp_html_cv_loc <- fs::file_temp(ext = ".html")
# rmarkdown::render("resume.rmd",
#                   params = list(pdf_mode = FALSE),
#                   output_file = tmp_html_cv_loc)
# 
# # Convert to PDF using Pagedown
# pagedown::chrome_print(input = tmp_html_cv_loc,
#                        output = "resume.pdf")

# Resume

This is a dynamically updating resume based on a google sheet.


## Files

  - All files beginning with `Rajewski_` are the final outputs of the script and can be shared.
  - `resume.rmd` and `cv.rmd` are the RMarkdown templates that create the two final documents in either longer CV format or shorter résumé format
  - `render_cv.r` is just a script that uses the `.rmd` templates to create the final documents
  - `dd_cv.css` is the CSS style sheet for the documents
  - `cv_printing_functions.r` contains all of the functions you need to source in order to compile the douments. These functions are called in the RMakrdown templates.
  - `Setup.R` is a script used when you first set this up to create the templates and scripts. Don't use this unless you are starting from scratch.

## Note

Due to some outdated packages, you need to install a specific commit of the `datadrivencv` package and an older version of the `icons` package. Here is a [link](https://github.com/nstrayer/datadrivencv/issues/90#issue-1272957136) to the issue should it ever be solved

```r
devtools::install_github('mitchelloharawild/icons@v0.1.0')
devtools::install_github('nstrayer/datadrivencv#60')
```
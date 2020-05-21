# ToDo

- Fill in annotation information for B visits. Currently, Race, Age etc for B visits are empty. Should be the same as A visits. Modify `AnnotationSetup.Rmd`

- Audomate `DiffMeth.Rmd` to avoid re-importing the data when rerunning the code

- Repeat the `DiffMeth.Rmd` analysis with the filled race and age covariates

- From `DiffMeth.Rmd`, we need
    - Diff. meth. CpGs
    - Diff. meth. regions
    - Gene set enrichment
    - Region set enrichment

- Predict Age and make a plot for samples having A and B visits. X-axis - Visit (A and B), Y-axis - Age. For each pair of visits for a sample, connect the Age measures with a line. Goal - to see the overall trend that the predicted age is increasing from A to B visit, or not.
    - Test whether the predicted age is significantly different from the actual age. Separately at A and B visits

- Cell type inference, to be used as covariates


# General

- When adding a file, describe it in the `README.md`

- Make Rmd files knittable without errors
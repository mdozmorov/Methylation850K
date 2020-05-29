# ToDo

- Repeat the `DiffMeth.Rmd` analysis with the filled race and age covariates
    - Find out why, fix: WARNING         Invalid pairing information for column Visit . --> Treating as unpaired.
    - Row names for all extracted differential analysis results
    - Adjust saving of the results to keep the most significant results. The cutoff should be an ajustable setting, like in https://github.com/mdozmorov/RNA-seq/blob/9c8defe83df5b8abed160b4f2c69e7cd4e16881e/Analysis_STAR.Rmd#L63


- From `DiffMeth.Rmd`, we need
    - Diff. meth. CpGs
    - Diff. meth. regions
    - Gene set enrichment
    - Region set enrichment


- From `AgePred.Rmd`, we need
    - Test whether the predicted age is significantly different from the actual age. Separately at A and B visits. Wilcoxon test
    - Test whether the predicted age differs between A and B visits (actual is unchanged). Wilcoxon test

- Cell type inference, to be used as covariates


# General

- When adding a file, describe it in the `README.md`

- Make Rmd files knittable without errors

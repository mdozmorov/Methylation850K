# ToDo

- Repeat the `DiffMeth.Rmd` analysis with the filled race and age covariates
    - Find out why, fix: WARNING         Invalid pairing information for column Visit . --> Treating as unpaired.
    - Row names for all extracted differential analysis results
    - Adjust saving of the results to keep the most significant results. The cutoff should be an ajustable setting, like in https://github.com/mdozmorov/RNA-seq/blob/9c8defe83df5b8abed160b4f2c69e7cd4e16881e/Analysis_STAR.Rmd#L63


- From `DiffMeth.Rmd`, we need
    - Find correct row IDs for tab.cpgislands, tab.promoters, tab.genes
    - Are there different functions to run Gene set enrichment and Region set enrichment?
    - What biological stories can we get from enrichment analyses?

- From `AgePred.Rmd`, we need
    + Test whether the predicted age is significantly different from the actual age. Separately at A and B visits. Wilcoxon test
    + Test whether the predicted age differs between A and B visits (actual is unchanged). Wilcoxon test
    - For each subsection in "Anaylysing Difference in Predicted Age" section, write summary/interpretation of the results:
        - High correlation is obvious, just summarize in words
        - Wilcoxon differences - is the average predicted age higher or lower the actual age? How much?

- Cell type inference, to be used as covariates

## Potential concerns

- When importing the data, "No methods found in package ‘RSQLite’ for request: ‘dbListFields’ when loading ‘lumi’
Sentrix position model failed, skipping"


# General

- When adding a file, describe it in the `README.md`

- Make Rmd files knittable without errors

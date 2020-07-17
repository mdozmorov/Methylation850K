# Illumina EPIC 850K analysis pipeline

- `01_Annotation.Rmd` - Creating `Sample_Sheet.csv` file from a combination of source files. It can be read by both `RnBeads` and `ChAMP` R packages. Formatted as:

```
    Sentrix_ID Sentrix_Position             barcode  ID Visit
1 204297420086           R01C01 204297420086_R01C01 031     B
2 204297420086           R02C01 204297420086_R02C01 032     A
3 204297420086           R03C01 204297420086_R03C01 034     A
4 204297420086           R04C01 204297420086_R04C01 031     A
5 204297420086           R05C01 204297420086_R05C01 035     B
```

- `02_DiffMeth.Rmd` - Differential methylation analysis using`RnBeads`. Data import, preprocessing, differential analysis. Saving structured results in `Differential_Methylation.xlsx` and normalized beta-values with annotations in `Methylation_bvalues.xlsx`.

The `Differential_Methylation.xlsx` file has the results generated with `02_DiffMeth.Rmd`. Each worksheet corresponds to different types of differential analysis, listed in the order of usefulness. The adjusted p-value was set to 0.01.

- "DEGs" - Full results of differential gene analysis, includes coding and noncoding transcripts
    - "DEGs.coding" - Only protein-coding genes. Positive/negative `mean.mean.diff` - upregulated/downregulated in Visit B.
        - "DEGs.coding.up" - Upregulated protein-coding genes
        - "DEGs.coding.dn" - Downregulated protein-coding genes

- "Promoters" - Full results of promoter-centered differential gene analysis, includes coding and noncoding transcripts
    - "Promoters.coding" - Only protein-coding genes
        - "Promoters.coding.up" - Upregulated protein-coding genes
        - "Promoters.coding.dn" - Downregulated protein-coding genes

- "CpGs" - Full results of differential analysis on CpG probe level. Positive/negative `mean.diff` - upregulated/downregulated in Visit B.

- "Islands" - Full results of differential analysis on CpG island level

The `Methylation_bvalues.xlsx` file has methylation beta values, cpgIDs x samples (`bvalues` sheet), and sample annotations (`annotations` sheet)


- `03_Analysis.Rmd` - Description of the results in `Differential_Methylation.xlsx`. Analysis of protein-coding results. Saves results into `Enrichment.xlsx` file.

- `04_Heatmap.Rmd` - visualization code

- `Methods.Rmd` - Illumina EPIC 850K analysis methods

- `Methylation_full.Rmd` - Old methylation analysis code
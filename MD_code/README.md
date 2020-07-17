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

- `03_Analysis.Rmd` - Description of the results in `Differential_Methylation.xlsx`. Analysis of protein-coding results.


- `Methods.Rmd` - Illumina EPIC 850K analysis methods

- `Methylation_full.Rmd` - Old methylation analysis code
library (RnBeads)

logger.start(fname=NA)
data.dir = "/Users/lucasrizkalla/Desktop/Methylation Research-VCU/Methylation850K/CellProportion"
idat.dir = file.path(data.dir, "idats")
sample.annotation = file.path(data.dir, "Methylation_Samples10.csv")
analysis.dir = file.path(data.dir, "Analysis")
data.source <- c(idat.dir, sample.annotation)


rnb.options(inference.reference.methylome.column="CellType", differential.site.test.method="refFreeEWAS",
            export.to.ewasher = TRUE)

rnb.set <- rnb.execute.import(data.source=data.source,
                             data.type="idat.dir")
ct.obj <- rnb.execute.ct.estimation(rnb.set, cell.type.column="CellType", 
                                    test.max.markers = 10000, top.markers = 500, method = "houseman1")

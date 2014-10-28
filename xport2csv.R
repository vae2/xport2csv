#!/usr/bin/env Rscript

## TODO: Wrap this in bash script so that some quasi-reasonable input arg

## TODO: Commands like ./xport2csv.R big_file.xpt | head -n 10
## result in a SIGPIPE error. This decreases the usefulness of wrapping R code
## with Rscript.

## parsing can be performed
## Vincent A. Emanuele II

## .. It is a major pain to get R to suppress output messages when loading a
## library. This is the essence of how it is done.
## Ref: http://stackoverflow.com/questions/11855072/using-rscript-is-there-a-decent-way-to-suppress-the-non-script-output
load.out <- capture.output(suppressMessages(require("SASxport", quietly=TRUE, warn.conflicts=FALSE)))

## library("SASxport", quietly=TRUE, verbose=FALSE, warn.conflicts=FALSE)

fileName <- commandArgs(trailingOnly=TRUE)[1]
data <- read.xport(fileName)

write.table(data,
            row.names=FALSE,
            col.names=TRUE,
            quote=TRUE,
            sep=",",
            eol="\n",
            na="NA",
            dec=".",
            qmethod="escape")

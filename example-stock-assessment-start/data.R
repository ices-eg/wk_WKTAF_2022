## Preprocess data, write TAF data tables

## Before:
## After:

library(icesTAF)

mkdir("data")

## 1 Read underlying data from bootstrap/data

catage <- read.ices(taf.data.path("sam_data/cn.dat"))




## 2 Preprocess data

## 3 Write TAF tables to data directory

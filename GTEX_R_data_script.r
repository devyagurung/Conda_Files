GTEX R data script

# GTEX sample data 

# Sample run on prepackaged RNA sample data. 

# Libraries 
library(ggplot2)
library(dplyr)
library(tidyr)

setwd("~/GTEx")

samples <- read.csv("data/samples.csv")
View(samples)

head(samples)
tail(samples)

# string run on samples 
str(samples)
# summary of samples
summary(samples)
# dimension of samples
dim(samples)

# 
count(samples, SMTS, SEX, sort = TRUE)

# this is a code for ggplot with color 
ggplot(samples, aes(x = SMTS, color = SEX)) + 
  geom_bar(stat = "count") + 
  coord_flip()

# this is a quick summary of your data
ggplot(samples, aes(x = SMTS, fill = DTHHRDY)) + 
  geom_bar(stat = "count") + 
  coord_flip() + 
  facet_wrap(~SEX)

head(samples)

# Boxplot # (SMCENTER = seq center), facet_wrap (~ needs tilda)
# color coded, aes is in 1st line specified, but everything below has them aes
ggplot(samples, aes(x = SMCENTER, y = SMRIN, color = DTHHRDY)) +
  geom_boxplot() + 
  geom_jitter() +
  facet_wrap(~SEX)


# color coded, aes is in 1st line specified, but everything below has them aes
ggplot(samples, aes(x = SMCENTER, y = SMRIN)) +
  geom_boxplot() + 
  geom_jitter(aes(color = SMRIN))+
  facet_wrap(~SEX)

# importing data, file is in .tsv format
results <- read.table("data/GTEx_Heart_20-29_vs_50-59.tsv")
head(results)

# filtering steps # giving P values
# these are genes that are diff expressed 
resultsDEGs <- filter(results, adj.P.Val < 0.05, 
                      logFC > 1 | logFC < -1) %>%
  arrange(desc(adj.P.Val)) # arranging in descending order

resultsDEGs

View(resultsDEGs)

# other way to do it 
resultsDEGs <- results %>%
  filter(adj.P.Val < 0.05, 
         logFC > 1 | logFC < -1) %>%
  arrange(desc(adj.P.Val))

resultsDEGs




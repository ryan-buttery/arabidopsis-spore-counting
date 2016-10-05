#This work is licensed under the Creative Commons Attribution-ShareAlike 4.0
#International License. To view a copy of this license, visit
#http://creativecommons.org/licenses/by-sa/4.0/.
#packages
pkgs <- function(pkg){
    new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
    if (length(new.pkg)) 
        install.packages(new.pkg, dependencies = TRUE)
    sapply(pkg, require, character.only = TRUE)
}
packages <- c("reshape2", "ggplot2", "dplyr", "tidyr")
pkgs(packages)
#reshaping data
counts <- read.csv("counts.csv")
View(counts)
df<-counts
dfm<-melt(df, id.vars = c("Accession","Vector"))
View(dfm)
#ANOVA and TukeyHSD post-hoc test.
av<-aov(dfm$value~dfm$Accession)
summary(av)
TukeyHSD(av)
#boxplots
p<-ggplot(data=dfm, aes(Accession, value))
p<-p+geom_boxplot(aes(fill=Vector))
p<-p+geom_point(aes(y=value, group=Vector), position=position_dodge(width=0.75))
p<-p+facet_wrap(~Vector, scales="free_x", ncol=9)
p
#Statistics and boxplots are complete! (assuming you formatted your data correctly...)
#Problem? Ensure the file with your data in the working directory is
#called counts.csv (and make sure you saved it from excel as .csv)
#Also ensure the table format is |Accession|Vector|counts| (case sensitive!)
#so under the headings, it would be like col-0|WT|0, or Ler-EDS(exon)|sgRNA(exon)|100
#any problems, email ryanbuttery@gmail.com 
#Have a nice day! :)
##to label your graph, copy and paste the following 2 lines without the #, and replace labels
#p<-p+labs(title="graphtitlehere",x="xaxislablehere",y="yaxislabelhere")
#p

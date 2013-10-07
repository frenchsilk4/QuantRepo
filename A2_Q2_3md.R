
load("/Users/aisha/projects/quantitative/Countries.Rdata")
library(relimp, pos=4)
showData(Countries, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)
# Read in the Mobile users dataset
# Dataset acquired from, http://data.worldbank.org/indicator/IT.CEL.SETS.P2
# Manipulated Dataset in excel, deleted all other time series and retained only data for 2010, thru 2012

MobileUsers <- read.table("/Users/aisha/projects/quantitative/mobile_Indicator2.csv", 
  header=TRUE, sep=",", na.strings="NA", dec=".", strip.white=TRUE)
showData(MobileUsers, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)

# Calculated percentage change of mobile users from 2010 to 2011
MobileUsers$mobile_growth_2011 <- ((MobileUsers$X2011 - MobileUsers$X2010)/MobileUsers$X2010)*100
showData(MobileUsers, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)

# Merged the new Mobile users dataset to the countries dataset -> Countries_MobileMerge 
Countries_MobileMerge <- merge(Countries, MobileUsers, all=FALSE, by="row.names")
rownames(Countries_MobileMerge) <- Countries_MobileMerge$Row.names
Countries_MobileMerge$Row.names <- NULL
showData(Countries_MobileMerge, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)
showData(Countries_MobileMerge, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)

# listing of the column headers
names(Countries_MobileMerge)

# Order the countries in alphabetical order. They are not ordered after merge.
Countries_MobileMerge = Countries_MobileMerge[order(Countries_MobileMerge$Country),]
showData(Countries_MobileMerge, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)

# Shows rows with missing(NA) values 
Countries_MobileMerge[!complete.cases(Countries_MobileMerge),]
showData(Countries_MobileMergeNA, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)

# Drop Countries with missing Fertility_rate in Dataset. 
# Countries dataset contains a lot of NA values, and if a country had no fertility rate
# it also didn't have a value for internet_users_2011

Countries_MobileMergeNA = Countries_MobileMerge[!is.na(Countries_MobileMerge$fertility_rate),]
showData(Countries_MobileMergeNA, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)
names(Countries_MobileMergeNA)

# Summary of mobile users in 2011
summary(Countries_MobileMergeNA$X2011)

# Histogram of the mobile_growth 
pdf("mobileHistograph.pdf")
mobileplot = hist(Countries_MobileMergeNA$mobile_growth_2011, nclass = 7, plot = FALSE)
plot(mobileplot, border ="dark blue", col="light blue", main = "Histogram of Mobile growth from 2010 - 2011", xlab = "Growth")
dev.off()

#Histogram of the mobile growth after taking the log
pdf("logmobileHistograph.pdf")
mobileplot = hist(log10(Countries_MobileMergeNA$mobile_growth_2011), nclass = 7, plot = FALSE)
plot(mobileplot, border ="dark green", col="light green", main = "Histogram of Mobile growth (log10) from 2010 - 2011", xlab = "Growth")
dev.off()
 
# Scatterplot between fertility_rate and internet_users_2011
pdf("scatterplot.pdf")
plot(Countries_MobileMergeNA$fertility_rate, Countries_MobileMergeNA$internet_users_2011,main = "Fertility_rate and Percent of internet users in 2011", xlab = "fertility", ylab="internet users 2011",pch=19)
dev.off()

# Scatterplot with fit line between fertility_rate and internet_users_2011
pdf("scatterplot3.pdf")
plot(Countries_MobileMergeNA$fertility_rate, Countries_MobileMergeNA$internet_users_2011,main = "Fertility_rate and Percent of internet users in 2011", xlab = "fertility", ylab="internet users 2011",pch=19)
# Draw Regression line internet_users_2011 ~ fertility_rate
abline(lm(Countries_MobileMergeNA$internet_users_2011~Countries_MobileMergeNA$fertility_rate), col="red")
#lines(lowess(Countries_MobileMergeNA$fertility_rate,Countries_MobileMergeNA$internet_users_2011), col = "blue")
dev.off()

showData(Countries_MobileMergeNA, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)
Countries_MobileMergeNA$internet_growth2011 = ((Countries_MobileMergeNA$internet_users_2011 - Countries_MobileMergeNA$internet_users_2010)/Countries_MobileMergeNA$internet_users_2010)*100
showData(Countries_MobileMergeNA, placement='-20+200', font=getRcmdr('logFont'), maxwidth=80, maxheight=30)


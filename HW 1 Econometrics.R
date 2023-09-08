#Group Members: Md Muhibul Islam; Zakaria Sule; Luis; Muhaymin


install.packages("tidyverse")
library(tidyverse)
attach(Household_Pulse_data)
summary(Household_Pulse_data)
Household_Pulse_data[1:10,1:6]
dim(Household_Pulse_data)

summary(TBIRTH_YEAR[GENID_DESCRIBE == "female"])
summary(TBIRTH_YEAR[GENID_DESCRIBE == "male"])
summary(TBIRTH_YEAR[GENID_DESCRIBE == "transgender"])
summary(TBIRTH_YEAR[GENID_DESCRIBE == "other"])
summary(TBIRTH_YEAR[GENID_DESCRIBE == "NA"])

# here i want to find average ages of men and women
mean(TBIRTH_YEAR[GENID_DESCRIBE == "female"])
sd(TBIRTH_YEAR[GENID_DESCRIBE == "female"])
mean(TBIRTH_YEAR[GENID_DESCRIBE == "male"])
sd(TBIRTH_YEAR[GENID_DESCRIBE == "male"])

##So the avarage age of female is 52 years whereas male is 53 years 
#which is almost close. 

#Now I am going to choose something else interesting. 
summary(HADCOVIDRV)
summary(LONGCOVID)
summary(SYMPTOMS)

#here i want to find average number of people who got affected covid; long 
#covid and mild covid symptoms. 

mean(HADCOVIDRV == "yes tested + or doc told had Covid")
sd(HADCOVIDRV=="yes tested + or doc told had Covid")
mean(LONGCOVID=="had symptoms 3mo or more Long Covid")
sd(LONGCOVID=="had symptoms 3mo or more Long Covid")
mean(SYMPTOMS=="had mild Covid symptoms")
sd(SYMPTOMS=="had mild Covid symptoms")

#here it is clear that 32598 people got affected with covid whereas 25590
#people had not affected. Apart from that it is wondering that 1102 people did  
#not know whether they affeted with covid or not.
#Another interesting thing I want to share that 8607 people had 3 months or
#more long covid and 23665 had not. Moreover, 1558 people had no covid
#symptoms although tested covid positive which made me surprised. Furthermore,
#13524, 13723 and 3576 people had mild, moderate and severe covid symptoms. 

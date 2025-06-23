xtset id year
* id year for panel model
count if emp <=0
count if  cap <=0
count if indoutpt <=0
gen lncap=ln(cap)
gen lnemp=ln(emp)
gen lnindoutpt=ln(indoutpt)
* generate variables with ln
regress lnindoutpt lnemp lncap
*ols with depended lnindoutpt
xtreg lnindoutpt lnemp lncap , fe 
estimate store a1
*fixed effect and store
xtreg lnindoutpt lnemp lncap, re 
estimate store a2
*random effect and store
hausman a1 a2 , sigmamore
* check statistics with hausman and we prefer fixed model 

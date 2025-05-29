#cd "------path------"
use http://www.stata.com/data/jwooldridge/eacsap/mroz, clear
describe
summarize inlf age educ kidslt6 kidsge6 nwifeinc motheduc fatheduc city* description data
reg inlf age educ kidslt6 kidsge6 nwifeinc motheduc fatheduc city* ols for example
outreg2 using results_ols.doc, replace word* use and save results of ols
logit inlf age educ kidslt6 kidsge6 nwifeinc motheduc fatheduc city * log model
outreg2 using results_logit.doc, replace word*-----
margins, dydx(*) atmeans * margins for changes 
estat ic
probit inlf age educ kidslt6 kidsge6 nwifeinc motheduc fatheduc city * probi model
outreg2 using results_probit.doc, replace word*-------
margins, dydx(*) atmeans*-------
estat ic

cd ""C:\Users\papav\OneDrive\Υπολογιστής\APPLIED ECONOMICS AND DATA ANALYSIS\MICROECONOMETRICS\exercise 5""
use http://www.stata.com/data/jwooldridge/eacsap/mroz, clear
describe
summarize inlf age educ kidslt6 kidsge6 nwifeinc motheduc fatheduc city
reg inlf age educ kidslt6 kidsge6 nwifeinc motheduc fatheduc city
outreg2 using results_ols.doc, replace word
logit inlf age educ kidslt6 kidsge6 nwifeinc motheduc fatheduc city 
outreg2 using results_logit.doc, replace word
margins, dydx(*) atmeans
estat ic
probit inlf age educ kidslt6 kidsge6 nwifeinc motheduc fatheduc city
outreg2 using results_probit.doc, replace word
margins, dydx(*) atmeans
estat ic

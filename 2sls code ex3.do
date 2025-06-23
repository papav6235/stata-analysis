reg lwage educ
ivregress 2sls lwage (educ = nearc2 nearc4),rob first
estimates store twosls_Estimation
ivregress 2sls lwage (educ = nearc2 nearc4) exper expersq smsa south black,rob first
estimates store twosls_Estimation_controls
*at first we estiamte lwage with educ with olas, next 2sls lwage exuc(=nearc2,nearc4).after that we estmate all variables together with 2ls inly for educ
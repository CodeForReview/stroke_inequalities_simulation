/******************************************************************************/
/***	Scenario 3_supplemental/C* (U partially mediates effects of race on   ***/
/***  stroke and mortality; U influences stroke and mortality) 					    ***/
/******************************************************************************/

/*Step 1: Set parameters*/

*specify prevalence of exposure
global pexp = 0.5

*specify shape (k) and scale (theta) parameters for U 
global U_shape = 1.0 
global U_scale = 0.5

*parameters for mortality
//effect of exposure on log hazard of death, based on US life tables for 1919-1921 birth cohort 
*values identified from time-varying U search loop for Scenario 3/C exposure=1
global g1_0to1 =   -.32050135		
global g1_1to5 =   -.22607253
global g1_5to10 =  -.37657399
global g1_10to15 = -.10593297
global g1_15to20 = .32377035
global g1_20to25 = .2813067
global g1_25to30 = .18791569
global g1_30to35 = .17515002
global g1_35to40 = .1636209
global g1_40to45 = .13135515
global g1_45to50 = .00307846
global g1_50to55 = -.35677347
global g1_55to60 = -.82527076
global g1_60to65 = -1.3777599
global g1_65to70 = -1.7158267
global g1_70to75 = -1.8955005
global g1_75to80 = -2.0382469
global g1_80to85 = -1.7675482
global g1_85to90 = -1.4317972
global g1_90to95 = -1.2307013

*effects of covariates on mortality risk
global g2 = 0			//log(HR) for effect of U on death  
global g3 = ln(1.5)		//log(HR) for interaction effect of exposure & U on death
global g4 = ln(2)		//log(HR) for effect of stroke history on death

*baseline hazard of death (whites), based on US life tables for 1919-1921 birth cohort
global lambda_0to1 = 	0.0749
global lambda_1to5 = 	0.0082
global lambda_5to10 = 	0.0028
global lambda_10to15 = 	0.0021
global lambda_15to20 = 	0.0034
global lambda_20to25 = 	0.0048
global lambda_25to30 = 	0.0056
global lambda_30to35 = 	0.0062
global lambda_35to40 = 	0.0068
global lambda_40to45 = 	0.0078
*values for ages 45+ identified from search loop because strokes begin occuring, stroke increase risk of death
global lambda_45to50 = 	.0102
global lambda_50to55 = 	.0132
global lambda_55to60 =	.0188
global lambda_60to65 = 	.0262
global lambda_65to70 =  .0388
global lambda_70to75 = 	.0606
global lambda_75to80 = 	.0918
global lambda_80to85 = 	.142
global lambda_85to90 = 	.214
global lambda_90to95 = 	.3

/*target stroke hazard for whites*/
global target_stk_lambda_exp0_45to50 = 0.00048
global target_stk_lambda_exp0_50to55 = 0.00113
global target_stk_lambda_exp0_55to60 = 0.00203
global target_stk_lambda_exp0_60to65 = 0.00329
global target_stk_lambda_exp0_65to70 = 0.00480
global target_stk_lambda_exp0_70to75 = 0.00688
global target_stk_lambda_exp0_75to80 = 0.01016
global target_stk_lambda_exp0_80to85 = 0.01273
global target_stk_lambda_exp0_85to90 = 0.01422
global target_stk_lambda_exp0_90to95 = 0.01666

/*baseline hazard of stroke (exp=0 whites)*/
*values identified from time-varying U search loop for Scenario 1/A exposure=0
global stk_lambda_exp0_45to50 = 0.0002008 
global stk_lambda_exp0_50to55 = 0.00049967
global stk_lambda_exp0_55to60 = 0.00106901
global stk_lambda_exp0_60to65 = 0.00167862
global stk_lambda_exp0_65to70 = 0.00238172
global stk_lambda_exp0_70to75 = 0.00337759
global stk_lambda_exp0_75to80 = 0.00488926
global stk_lambda_exp0_80to85 = 0.0065517 
global stk_lambda_exp0_85to90 = 0.00817693
global stk_lambda_exp0_90to95 = 0.01075264

*parameters for stroke hazard
global b1 =	0.0015 		//additive hazard for direct effect of exposure on stroke
global b2 = 0.0005		//additive hazard for effect of Uij on stroke


*parameters for Uij												
global a1 = 1			//effect of exposure on Uij

*probability of death at stroke
global pstrokedeath = 0.25 

/******************************************************************************/
/******************************************************************************/
/******************************************************************************/


/******************************************************************************/
/***	Scenario 2_supplemental/B* (U partially mediates effects of race on   ***/
/***  stroke and mortality; U influences stroke and mortality).					    ***/
/******************************************************************************/

/*Step 1: Set parameters*/

*specify prevalence of exposure
global pexp = 0.5

*specify shape (k) and scale (theta) parameters for U 
global U_shape = 1.0 
global U_scale = 0.5

*parameters for mortality
//effect of exposure on log hazard of death, based on US life tables for 1919-1921 birth cohort 
*values identified from time-varying U search loop for Scenario 2/B exposure=1
global g1_0to1 =   -.09441371						
global g1_1to5 =   -.00319729					
global g1_5to10 =  -.15037899
global g1_10to15 = .13338065
global g1_15to20 = .54494337
global g1_20to25 = .50359364
global g1_25to30 = .4066155
global g1_30to35 = .38916076
global g1_35to40 = .38275207
global g1_40to45 = .33983029
global g1_45to50 = .20422658
global g1_50to55 = .18910696
global g1_55to60 = .20126433
global g1_60to65 = .15970286
global g1_65to70 = .07930825
global g1_70to75 = -.0264488
global g1_75to80 = -.23175897
global g1_80to85 = -.44751351
global g1_85to90 = -.56989023
global g1_90to95 = -.69529401

*effects of covariates on mortality risk
global g2 = ln(1.5)		//log(HR) for effect of U on death  
global g3 = 0 			//log(HR) for interaction effect of exposure & U on death
global g4 = ln(2)		//log(HR) for effect of stroke history on death

*baseline hazard of death (whites), based on US life tables for 1919-1921 birth cohort
*values identified from time-varying U search loop for Scenario 2/B exposure=0
global lambda_0to1 =   0.05993608
global lambda_1to5 =   0.00514739
global lambda_5to10 =  0.00215351
global lambda_10to15 = 0.00166976
global lambda_15to20 = 0.00267521
global lambda_20to25 = 0.00390392
global lambda_25to30 = 0.00437115
global lambda_30to35 = 0.0049615
global lambda_35to40 = 0.00542344 
global lambda_40to45 = 0.00633108
global lambda_45to50 = 0.00792633
global lambda_50to55 = 0.00748081
global lambda_55to60 = 0.00662099
global lambda_60to65 = 0.00565756
global lambda_65to70 = 0.00676321 
global lambda_70to75 = 0.01056922 
global lambda_75to80 = 0.01718918 
global lambda_80to85 = 0.04446674
global lambda_85to90 = 0.10277376
global lambda_90to95 = 0.19765066

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
*values identified from time-varying U search loop for Scenario 2/B exposure=0
global stk_lambda_exp0_45to50 = 0.00025539
global stk_lambda_exp0_50to55 = 0.00056947
global stk_lambda_exp0_55to60 = 0.00125675
global stk_lambda_exp0_60to65 = 0.00214272
global stk_lambda_exp0_65to70 = 0.00344512
global stk_lambda_exp0_70to75 = 0.0053263 
global stk_lambda_exp0_75to80 = 0.00856164
global stk_lambda_exp0_80to85 = 0.01133879
global stk_lambda_exp0_85to90 = 0.01454804
global stk_lambda_exp0_90to95 = 0.01743596

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


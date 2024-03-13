***********************************************************************************
* TUTORIAL 3 - QUESTION 5

* We are going to generate data on individuals who belong to different groups. 
* The only individual characteristic is the experience
* Then we will create different models for the outcome Y
* The idea is that we generate models using different parameters and then we will
*  see if we can recover those true parameters with regressions 
***********************************************************************************


* GENERATE DATA

* gen individuals and groups
clear
set obs 10000
gen i= _n
gen group = floor(i/10-0.01)+1

* gen experience
gen eps = uniform()*15
gen experience = round(eps)
drop eps

* gen group experience
egen group_exp = mean(experience), by(group)



***********************************************************************************

* PARAMETERS
scalar alpha = 2
scalar beta = 2
scalar gamma = 1
scalar delta = 0.3






***********************************************************************************

**** GENERATE (TRUE) MODEL WITHOUT ENDOGENOUS EFFECTS AND ONLY CONTEXTUAL EFFECTS  *****


* ERROR TERM
gen error = rnormal(0,5)

* MODEL WITH ONLY CONTEXTUAL EFFECTS
gen Y = alpha + beta*experience + gamma*group_exp + error

* regression
reg Y experience group_exp




***********************************************************************************

**** GENERATE A MODEL WITH ENDOGENOUS EFFECTS  ****

drop Y

* Create group average outcome using the equation on slide 12 (reduced form of Y_group)
// Note: We add a small error to simulate that the avg error will not be exactly zero
gen sampl_err = rnormal(0,0.001)
gen Y_group = alpha/(1-delta) + (gamma+beta)/(1-delta)*group_exp + sampl_err

* Create Y including endogenous effects
gen Y = alpha + beta*experience + gamma*group_exp + delta*Y_group + error

* Try different regressions
reg Y experience group_exp Y_group
reg Y experience group_exp

* IDEA OF REDUCED FORM: 
di in ye "According to the reduced form, the coeff of group_exp should be = "  (gamma+delta*beta)/(1-delta)



***********************************************************************************


**** GENERATE MODEL WITH CORRELATED SHOCKS (NO OTHER EFFECT) ****

drop Y

* Create a shock to the group
egen shock_to_group = mean(rnormal(0,10)), by(group)

* Create the model (only common shock matters)
gen Y= 2*experience + shock_to_group + error

* Create Y of peers
egen group_Y = mean(Y), by(group)
gen peers_Y = (10*group_Y-Y)/9

* Regression
regress Y experience peers_Y





***********************************************************************************

**** OMMITED VARIABLE BIAS ****

drop Y

* Create a confounder = good managers are good at motivating people but also at 
*                       enforcing punctuality.
*                       We try to estimate the effect of having punctual colleagues 
*                       and assume that manager quality is unobserved

* ---> Managers quality
egen manager_quality = mean(rnormal(0,5)), by(group)

* ---> Manager increases punctuality

gen punctuality = uniform() + 0.5*manager_quality

* Create the model (it is manager quality what really matters)
gen Y= 2*experience + manager_quality + error

* Create punctuality of peers
egen group_punct = mean(punctuality), by(group)
gen peers_punct = (10*group_punct-punctuality)/9

* Regression (use punctuality, assume manager quality is not observed)
regress Y experience peers_punct



 


























********
gen  peers_exp = (10*group_exp-experience)/9 
replace group_exp = peers_exp 

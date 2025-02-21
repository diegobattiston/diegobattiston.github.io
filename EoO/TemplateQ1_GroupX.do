/*******************************************************************************
                      ECONOMICS OF ORGANISATIONS
                        Group Coursework 2025
                        
                 Template for answering question 1

GROUP NUMBER:

*******************************************************************************/

/*  

NOTES:
   
- You need to type your commands for Question 1 using this template.
 
- You need to comment the code so I can follow that you are doing. For example, 
  before creating a variable, add a line saying: "* Create X variable", etc.
  
- You can comment a single line (so does not run) if you start it with *

- You can comment a full block of text (several lines - e.g.  like this text -)
  if you enclosed it between the symbols  /* and */
    
- There are some useful commands you need to remember:

   - For regressions, use the command reg (e.g: reg Y X1 X2 X3, etc.). It is 
     recommended to always use the option "robust" for getting correct standard
     errors.
   
   - You may need to create dummies for the time periods. If you write:
     tab period, gen(t_) , you will creates dummies t_1, t_2, ..., t_7 for
     each period from -3 to +3. This will be useful for some regressions
     
   - For regressions with fixed effect, there are several options. The easiest one 
     is to use the command "areg" with the option "absorb". E.g. you include firm 
	   fixed effects with: areg Y X1 X2, absorb(firm_id) you can also add the dummies 
	   explicitly with reg Y X1 i.firm_id but sometimes there are too many dummies
	   and you will get a very long output. The command areg will control for the 
	   fixed effects but it will not show you them. If you need to include more 
	   than one fixed effect (e.g. firm and period), with the areg command you can 
     specify one of the fixed effects manually (ideally the smaller set) 
	   for instance: areg Y X1 X2 t_2 t_3 t_4 t_5 t_6 t_7, absorb(firm_id), notice
     that I included the period fixed effects using the dummies manually. You can
     also install the command reghdfe (typing ssc install reghdfe) which allows 
     you to write reghdfe Y X1 X2, absorb(firm_id period)
	    
  -  If you want to run a regression for only a subset of observations, you can 
     use "if". E.g. reg Y X1 X2 if X3==1 (notice the double "=" for the condition)
     You can condition on more variables. E.g. reg Y X1 X2 if X3==1 & X4==0
     
   - Creating variables is easy with the command gen. E.g. if you want to create
     the sum between variable X1 and X2, you do: gen newvar = X1+X2. If you 
     want to create the product: gen newvar = X1*X2.   
     
   - You can create dummies using the following syntax: gen Post = period>=0 
     in the example, Post takes 1 for period>=0 and 0 otherwise 
     
   - Instrumental Variables can be implemented (2SLS) with the command ivreg. If 
     Y is the dependent variable, Z is the instrument and X the endogenous variable, 
     the syntax is: 
                       ivreg Y (X=Z) other controls, first 
     
     The option "first" will show you both the first and the second stage of the 
     two stages regression
        
*/
      

* Open Dataset
use "replace_this_for_your_directory_or_folder/CEOtransitions.dta", clear



* PART (a) ---------------------------------------------------------------------

write here your commands




* PART (b) ---------------------------------------------------------------------

 * i *

write here your commands to estimate the DiD (subpart i)

 * iii *

write here your commands for the dynamic specification (subpart iii)

/* Hint: You need to create dummies for the interaction between external_ceo and 
   the different period indicators. For this, it is usefull to use the following 
   syntax (e.g. for period = -2): gen Pre2 = external_ceo*(period==-2)
   You can extend this for the other required dummies */


      

* PART C -----------------------------------------------------------------------

* ii *

write here your commands for the IV

* iii *

write here your commands for checking correlation of IV and vars

 

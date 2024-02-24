/*******************************************************************************
                      ECONOMICS OF ORGANISATIONS
                        Group Coursework 2024
                        
                 Template for answering question 2

GROUP NUMBER:

*******************************************************************************/

/*  

NOTES:
   
- You need to type your commands and answers to Question 1 using this template.
 
- You need to comment the code so I can follow that you are doing. For example, 
  before creating a variable, add a line saying: "* Create X variable", etc.
  
- You can comment a single line (so does not run) if you start it with *

- You can comment a full block of text (several lines - e.g.  like this text -)
   if you enclosed it between the symbols  /* and */
    
- There are some useful commands you need to remember:

   - For regressions, use the command reg (e.g: reg Y X1 X2 X3, etc.)
   
   - For including a fixed effect, there are several options. The easiest one is
     to use the command "areg" with the option "absorb". E.g. you include firm 
	 fixed effects with: areg Y X1 X2, absorb(firm_id) you can also add the dummies 
	 explicitly with reg Y X1 i.firm_id but sometimes there are too many dummies
	 and you will get a very long output. The command areg will control for the 
	 fixed effects but it will not show you them. If you need to include more 
	 than one fixed effect (e.g. firm and year), with the areg command you will
	 need to specify one of the fixed effects (the smaller set ideally) manually
	 for instance areg Y X1 X2 i.year, absorb(firm_id)
	
   - For joint test of significance, you can use the command test after running
     the regression. E.g. test X1 X2 X3. If you use dummies like i.year, then the
	 synatx is slightly different: test 2015.year 2016.year ... etc. If you absorb
	 fixed effects with areg, then the command will show you with the test. 	
     
   - If you want to run a regression for only a subset of observations, you can 
     use "if". E.g. reg Y X1 X2 if X3==1 (notice the double = for the condition)
     You can condition on more variables. E.g. reg Y X1 X2 if X3==1 & X4==0
     
   - Creating variables is easy with the command gen. E.g. if you want to create
     the sum between variable X1 and X2, you do: gen newvar = X1+X2. If you 
     want to create the product: gen newvar = X1*X2.   
*/
      

* Open Dataset
use "replace_this_for_your_directory_or_folder/MTH.dta", clear



* PART A -----------------------------------------------------------------------

write here your commands


/*
Write here the answer


*/




* PART B -----------------------------------------------------------------------

write here your commands


/*
Write here the answer


*/




* PART C -----------------------------------------------------------------------

write here your commands


/*
Write here the answer


*/



* PART D -----------------------------------------------------------------------

write here your commands


/*
Write here the answer


*/


* PART E -----------------------------------------------------------------------



write here your commands




/*
Write here the answer  


*/



* PART F -----------------------------------------------------------------------


write here your commands


/*
Write here the answer  


*/


* PART G -----------------------------------------------------------------------



write here your commands




/*
Write here the answer  


*/


/*******************************************************************************
                      ECONOMICS OF ORGANISATIONS
                        Group Coursework 2023
                        
                 Template for answering question 1

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

   - For regressions, use the command reg (syntax: reg Y X1 X2 X3, etc.)
   
   - For including a fixed effect, use command areg with the option "absorb
     E.g. you include firm fixed effects with: areg Y X1 X2, absorb(firm_id)
     you can also add the dummies explicitly with  reg Y X1 i.firm_id but there
     are too many dummies and you will get a very long output. The command areg
     will control for the fixed effects but it will not show you them.
     
   - If you want to run a regression for only a subset of observations, you can 
     use "if". E.g. reg Y X1 X2 if X3==1 (notice the double = for the condition)
     You can condition on more variables. E.g. reg Y X1 X2 if X3==1 & X4==0
     
   - Creating variables is easy with the command gen. E.g. if you want to create
     the sum between variable X1 and X2, you do: gen newvar = X1+X2. If you 
     want to create the product: gen newvar = X1*X2.   
*/
      

* Open Dataset
use "replace_this_for_your_directory_or_folder/JST.dta", clear



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


*** i: OLS using 2015 only

write here your commands


*** ii: Diff-in-Diff


write here your commands




/*
Write here the answer  


*/



* PART F -----------------------------------------------------------------------


write here your commands


/*
Write here the answer  


*/
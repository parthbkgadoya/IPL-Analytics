# ipl_analytics
Analyze and visualize IPL data

Note : I have created required csv file for analysis, from original IPL dataset. I have not included code to create this file.

Problem statement :
  Calculate probaility of victory for "Mumbai Indians" team given that captain of MI will score more than or equal to 30 runs.

Data set :
  Originally required data was scattered around multiple file. I have prepared required data which contains match_id, captain_id, runs(of captain in that match), Victory (binary) etc by performing data preprocessing steps.
  
  Original data set can be found at : www.kaggle.com
  
Approach :
  
  1. Calculate how many matches won by MI team.
  2. Calculate In how many matches, captain scored >= 30 runs.
  3. Prepare confusion matrix (contingency table)
        >=30  <30
  Won   ac    bc
  Loss  ad    bd
  
  4. prob(winning | cap_run >= 30) = ac / (ac + ad) 
  
  That's it.
  
  Happy Analyzing!
  

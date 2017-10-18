path <- "C:\\Users\\The Admin\\Desktop\\IPL data"
setwd(path)

final <- read.csv("MI_cap_runs_1.csv")

confusion_matrix <- matrix() 

final$runs[1]

#prepare confusion matrix
#cap_runs- >=30|  <30
# WON  |  ac   |  bc => ac+ bc = total winning matches 
# LOSS |  ad   |  bd => ad+ bd = total lost matches
#                   -> ac=bc+ad+bd = total matches
# ac+ad = total matches in which captain score is above 30 or equal 30
#   -> |  ac+ad | bc+bd => total matches 
#probability of winning for MI, given that captain scores more than or equal to 30
#prob(winning | cap_run >= 30) = ac / (ac + ad)
ac = 0
for(i in 1:140){
  if(final$runs[i] >= 30 & final$victory[i]==1){
    ac = ac + 1
  }
}
ac

bc = 0
for(i in 1:140){
  if(final$runs[i] < 30 & final$victory[i]==1){
    bc = bc + 1
  }
}
bc

ad = 0
for(i in 1:140){
  if(final$victory[i] == 0 & final$runs[i]>=30){
    ad = ad + 1
  }
}
ad

bd = 0
for(i in 1:140){
  if(final$victory[i] == 0 && final$runs[i] < 30){
    bd = bd + 1
  }
}
bd

cond_prob <- ac/(ac+ad)
cond_prob
#prob(winning | cap_run >= 30) = ac / (ac + ad) = 0.6363
#63% chances of winning if captain score is greater than 30

#extra
cond_prob_2 = bc/ (bc+bd)
cond_prob_2
#prob(winning | cap_run < 30) = bc/ (bc+bd) = 0.5294
#53% chances of winning if captain score is less than 30

#final matrix
#   a   b
#c  35  45
#d  20  40


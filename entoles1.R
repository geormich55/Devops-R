setwd("C:/Users/�������/Desktop")

#diavazw to arxeio

dataset = read.csv("dataset.csv", sep=';', header = TRUE, na.strings = 
                    c("NA"),
                   colClasses = c("character", "character", "numeric", "numeric", 
                                  "integer", "integer",
                                  "integer", "numeric", "numeric", "integer", "integer", "integer", 
                                  "integer",
                                  "integer", "integer", "numeric", "integer", "integer", "integer", 
                                  "integer",
                                  "integer", "integer", "integer", "integer", "integer", "integer", 
                                  "integer"))

#epishs diagrafw tis diploeggrafes apo ta dedomena

dataset = unique(dataset)

#antikathistw tis NA times stis sthles-xaraktristika tou dataset opou 
#exoun NA me to meso oro auths ths sthlhs-xarakthristiko

m1 = median(dataset$average_issues_comments_length, na.rm = TRUE)
dataset$average_issues_comments_length[is.na(dataset
                                             $average_issues_comments_length)] = m1
m2 = median(dataset$average_time_to_close_issues, na.rm = TRUE)
dataset$average_time_to_close_issues[is.na(dataset
                                           $average_time_to_close_issues)] = m2
m3 = median(dataset$average_comments_per_issue, na.rm = TRUE)
dataset$average_comments_per_issue[is.na(dataset
                                         $average_comments_per_issue)] = m3

# h alliws mporei na ginei etsi h antikatastash twn NA me to meso oro 
#ths kathe
#sthlhs for(i in 1:8010){
#for(j in 1:27){
#if(is.na(dataset[i,j])==TRUE){
#dataset[i,j]=median(dataset[,j], na.rm = TRUE)
#}
#}
#}
#tha mporouse na ginei kai normalise alla me thn efarmogh tou eida oti 
#den allazoun ta apotelesmata pros to kalutero..to normalise tha 
#ginotan etsi
#normalized = as.data.frame(lapply(c, function(c) (c - min(c))/(max(c) 
- 
  #min(c))
  #)
  #)
  
  #dhmiourgw ena dataset opou vgazw tis eggrafes me NA epishs ektos
  #apo to dataset pou antikatesthsa to meso oro gia n peiramatistw
  #gia thn kaluterh timh kai upologizw tis correlations kai twn
  #duo afou afairesw tis prwtes 2 sthles pou einai alfaritmhtika kai
  #den suneisferoun sto teliko apotelesma
  
  dataset2=dataset[,3:27]
dataset1=na.omit(dataset)
dataset12=dataset1[,3:27]
cor=cor(dataset2)
cor1=cor(dataset12)

#vriskw ta athroismata correlation ths kathe sthlhs twn pinakwn cor
#kai cor1 kai ta taxinomw apo to megalutero sto mikrotero

sum=matrix(0,byrow=TRUE,nrow=25)
for(j in 1:25){
  sum[j]=0
  for(i in 1:25){
    sum[j]=sum[j]+cor[i,j]
  }
}
b1=sum
max=matrix(0,byrow=TRUE,nrow=25)
for(j in 1:25){
  if(j>1){
    b1=b1[-k]}
  else{}
  n=25-j+1
  big=b1[1]
  for(i in 2:n){
    if(b1[i]>big){
      max[j]=b1[i]
      big=b1[i]
      k=i}
    else{}}}
max
sum


sum2=matrix(0,byrow=TRUE,nrow=25)
for(j in 1:25){
  sum2[j]=0
  for(i in 1:25){
    sum2[j]=sum2[j]+cor1[i,j]
  }
}
b1=sum2
max2=matrix(0,byrow=TRUE,nrow=25)
for(j in 1:25){
  if(j>1){
    b1=b1[-k]}
  else{}
  n=25-j+1
  big=b1[1]
  for(i in 2:n){
    if(b1[i]>big){
      max2[j]=b1[i]
      big=b1[i]
      k=i}
    else{}}}
max2
sum2
#21 18 20 22 19 12 5 13 3 25 6 23 24 17 4 15 16 9 8
#10 11 7 1 2 14
#21 18 20 22 19 12 5 13 3 25 6 23 24 17 4 15 16 9 8 10 11 7 1 2 14
#21 18 20 22 19 12 5 13 3 25 6 23 24 17 4 15 16 9 8 11 10 7 1 2 14
#21 18 20 22 19 12 5 13 3 25 6 23 24 17 4 15 16 9 8 10 11 7 1 2 14 
#dataset
#21 18 20 22 19 12 5 13 3 25 6 23 24 17 4 15 16 9 8 11 10 7 1 2 14 
#dataset1

#vriskw kai epalhtheuw oti einai etsi gia auto kai to pairnw mia apo
#to dataset kai mia apo to dataset me exw tis sthles 1 2 kathe fora
#ton megalutero ths kathe sthlhs tou dataset me vash ton prohgoumeno
#upologismo twn athroismatwn cor kai cor1 me vash th seira tous
#pou eixan apo ton megalutero ston mikrotero meta thn taxinomhsh
#kai auto to kanw kai gia to dataset kai gia to dataset1 ws peirama
#mhpws me thn allh methodo proepexergasias vgoun kalutera apotelesmata

which.max(dataset$total_file_changes)
which.max(dataset[,21])
which.max(dataset2[,21])
which.max(dataset5$total_file_changes)
which.max(dataset5$total_file_additions)
which.max(dataset5$total_file_modifications)
which.max(dataset5$commits_authored)
which.max(dataset5$total_file_deletions)
which.max(dataset5$change_bursts)
which.max(dataset5$issues_participated)
which.max(dataset5$biggest_burst_length)
which.max(dataset5$issues_closed)
which.max(dataset5$violations_eliminated)
which.max(dataset5$issues_closed_per_day)
which.max(dataset5$total_lines_of_code_changed)
which.max(dataset5$violations_added)
which.max(dataset5$activity_period_in_days)
which.max(dataset5$issues_opened)
which.max(dataset5$tot_additions)
which.max(dataset5$tot_deletions)
which.max(dataset5$early_deletions)
which.max(dataset5$early_additions)
which.max(dataset5$late_deletions)
which.max(dataset5$late_additions)
which.max(dataset5$average_comments_per_issue)
which.max(dataset5$average_issues_comments_length)
which.max(dataset5$average_time_to_close_issues)
which.max(dataset5$inactive_period_within_active_period)
which.max(dataset$total_file_changes)
which.max(dataset$total_file_additions)
which.max(dataset$total_file_modifications)
which.max(dataset$commits_authored)
which.max(dataset$total_file_deletions)
which.max(dataset$change_bursts)
which.max(dataset$issues_participated)
which.max(dataset$biggest_burst_length)
which.max(dataset$issues_closed)
which.max(dataset$violations_eliminated)
which.max(dataset$issues_closed_per_day)
which.max(dataset$total_lines_of_code_changed)
which.max(dataset$violations_added)
which.max(dataset$activity_period_in_days)
which.max(dataset$issues_opened)
which.max(dataset$tot_additions)
which.max(dataset$tot_deletions)
which.max(dataset$early_deletions)
which.max(dataset$early_additions)
which.max(dataset$late_deletions)
which.max(dataset$late_additions)
which.max(dataset$average_comments_per_issue)
which.max(dataset$average_issues_comments_length)
which.max(dataset$average_time_to_close_issues)
which.max(dataset$inactive_period_within_active_period)
which.max(dataset[,21])
which.max(dataset2[,21])
which.max(dataset2[,18])
which.max(dataset2[,20])
which.max(dataset2[,22])
which.max(dataset2[,19])
which.max(dataset2[,12])
which.max(dataset2[,5])
which.max(dataset2[,13])
which.max(dataset2[,3])
which.max(dataset2[,25])
which.max(dataset2[,6])
which.max(dataset2[,23])
which.max(dataset2[,24])
which.max(dataset2[,17])
which.max(dataset2[,4])
which.max(dataset2[,15])
which.max(dataset2[,16])
which.max(dataset2[,9])
which.max(dataset2[,8])
which.max(dataset2[,10])
which.max(dataset2[,11])
which.max(dataset2[,7])
which.max(dataset2[,1])
which.max(dataset2[,2])
which.max(dataset2[,14])
which.max(dataset1$total_file_changes)
which.max(dataset1$total_file_additions)
which.max(dataset1$total_file_modifications)
which.max(dataset1$commits_authored)
which.max(dataset1$total_file_deletions)
which.max(dataset1$change_bursts)
which.max(dataset1$issues_participated)
which.max(dataset1$biggest_burst_length)
which.max(dataset1$issues_closed)
which.max(dataset1$violations_eliminated)
which.max(dataset1$issues_closed_per_day)
which.max(dataset1$total_lines_of_code_changed)
which.max(dataset1$violations_added)
which.max(dataset1$activity_period_in_days)
which.max(dataset1$issues_opened)
which.max(dataset1$tot_additions)
which.max(dataset1$tot_deletions)
which.max(dataset1$early_deletions)
which.max(dataset1$early_additions)
which.max(dataset1$late_deletions)
which.max(dataset1$late_additions)
which.max(dataset1$average_comments_per_issue)
which.max(dataset1$average_issues_comments_length)
which.max(dataset1$average_time_to_close_issues)
which.max(dataset1$inactive_period_within_active_period)
which.max(dataset12[,21])
which.max(dataset12[,18])
which.max(dataset12[,20])
which.max(dataset12[,22])
which.max(dataset12[,19])
which.max(dataset12[,12])
which.max(dataset12[,5])
which.max(dataset12[,13])
which.max(dataset12[,3])
which.max(dataset12[,25])
which.max(dataset12[,6])
which.max(dataset12[,23])
which.max(dataset12[,24])
which.max(dataset12[,17])
which.max(dataset12[,4])
which.max(dataset12[,15])
which.max(dataset12[,16])
which.max(dataset12[,9])
which.max(dataset12[,8])
which.max(dataset12[,11])
which.max(dataset12[,10])
which.max(dataset12[,7])
which.max(dataset12[,1])
which.max(dataset12[,2])
which.max(dataset12[,14])

#vlepw tis times twn stoixeiwn pou vghkan ta megalutera sta 
#shmantikotera xarakthristika gia na dw an mou kanoun auta me
#to megalutero athroisma cor h oxi..diapistwnw oti auta mou kanoun..
#Ton elegxo auto ton kanw thewrontas oti ta shmntikoteraa 
#xarakthristika
#gia na katalaveis an kapoios einai dev h ops h devops h QA to 
#katalavaineis analoga me tis times pou exoun sta parakatw 
#xarakthristika opou prepei enas dev na exei megalo commits,kai ligo
#sxolia kai issues,
#enas ops megalo issues ,liga commits,kai arketa sxolia,enas devops 
#megalo kai apo ta duo commits kai issues me sxolia endiamesa twn 2 kai 
#enas QA na exei mono polla sxolia kai ola ta alla ligo..
#Etsi vriskw oti to kalutero kai vlepw oti o pio antiprosopeftikos oros
#gia thn kathe omada (dev ops devops kai QA) einai o prwtos kathe fora
#ths taxinomhshs athroismatos correlation..
#auto to kanw kai gia to c kai gia to c1 analoga me thn methodo proepe-
#xergasias pou xrhsimopoihsa


dataset$issues_participated[6281]
dataset$average_comments_per_issue[6281]
dataset$issues_closed[6281]
dataset$issues_opened[6281]
dataset$issues_opened[6281]
dataset$commits_authored[6281]
dataset$issues_participated[580]
dataset$average_comments_per_issue[580]
dataset$issues_closed[580]
dataset$issues_opened[580]
dataset$commits_authored[580]
dataset$issues_participated[5146]
dataset$average_comments_per_issue[5146]
dataset$issues_closed[5146]
dataset$issues_opened[5146]
dataset$commits_authored[5146]
dataset$issues_participated[2398]
dataset$average_comments_per_issue[2398]
dataset$issues_closed[2398]
dataset$issues_opened[2398]
dataset$commits_authored[2398]
dataset$issues_participated[6541]
dataset$average_comments_per_issue[6541]
dataset$issues_closed[6541]
dataset$issues_opened[6541]
dataset$commits_authored[6541]
dataset$issues_participated[586]
dataset$average_comments_per_issue[586]
dataset$issues_closed[586]
dataset$issues_opened[586]
dataset$commits_authored[586]
dataset$issues_participated[927]
dataset$average_comments_per_issue[927]
dataset$issues_closed[927]
dataset$issues_opened[927]
dataset$commits_authored[927]
dataset$issues_participated[3974]
dataset$average_comments_per_issue[3974]
dataset$issues_closed[3974]
dataset$issues_opened[3974]
dataset$commits_authored[3974]
dataset$issues_participated[1405]
dataset$average_comments_per_issue[1405]
dataset$issues_closed[1405]
dataset$issues_opened[1405]
dataset$commits_authored[1405]
dataset$issues_participated[5]
dataset$average_comments_per_issue[5]
dataset$issues_closed[5]
dataset$issues_opened[5]
dataset$commits_authored[5]
dataset$average_issues_comments_length[6281]
dataset$average_issues_comments_length[580]
dataset$average_issues_comments_length[5146]
dataset$average_issues_comments_length[2398]
dataset$average_issues_comments_length[6541]
dataset$average_issues_comments_length[586]
dataset$average_issues_comments_length[927]
dataset$average_issues_comments_length[3974]
dataset$average_issues_comments_length[1405]
dataset$average_issues_comments_length[5]
dataset1$issues_participated[1629]
dataset1$average_comments_per_issue[1629]
dataset1$average_issues_comments_length[1629]
dataset1$issues_closed[1629]
dataset1$issues_opened[1629]
dataset1$commits_authored[1629]
dataset1$issues_participated[134]
dataset1$average_comments_per_issue[134]
dataset1$average_issues_comments_length[134]
dataset1$issues_closed[134]
dataset1$issues_opened[134]
dataset1$commits_authored[134]
dataset1$issues_participated[1246]
dataset1$average_comments_per_issue[1246]
dataset1$average_issues_comments_length[1246]
dataset1$issues_closed[1246]
dataset1$issues_opened[1246]
dataset1$commits_authored[1246]
dataset1$issues_participated[566]
dataset1$average_comments_per_issue[566]
dataset1$average_issues_comments_length[566]
dataset1$issues_closed[566]
dataset1$issues_opened[566]
dataset1$commits_authored[566]
dataset1$issues_participated[1733]
dataset1$average_comments_per_issue[1733]
dataset1$average_issues_comments_length[1733]
dataset1$issues_closed[1733]
dataset1$issues_opened[1733]
dataset1$commits_authored[1733]
dataset1$issues_participated[1603]
dataset1$average_comments_per_issue[1603]
dataset1$average_issues_comments_length[1603]
dataset1$issues_closed[1603]
dataset1$issues_opened[1603]
dataset1$commits_authored[1603]
dataset1$issues_participated[669]
dataset1$average_comments_per_issue[669]
dataset1$average_issues_comments_length[669]
dataset1$issues_closed[669]
dataset1$issues_opened[669]
dataset1$commits_authored[669]
dataset1$issues_participated[2067]
dataset1$average_comments_per_issue[2067]
dataset1$average_issues_comments_length[2067]
dataset1$issues_closed[2067]
dataset1$issues_opened[2067]
dataset1$commits_authored[2067]
dataset1$issues_participated[1429]
dataset1$average_comments_per_issue[1429]
dataset1$average_issues_comments_length[1429]
dataset1$issues_closed[1429]
dataset1$issues_opened[1429]
dataset1$commits_authored[1429]
dataset1$issues_participated[363]
dataset1$average_comments_per_issue[363]
dataset1$average_issues_comments_length[363]
dataset1$issues_closed[363]
dataset1$issues_opened[363]
dataset1$commits_authored[363]
dataset1$issues_participated[8]
dataset1$average_comments_per_issue[8]
dataset1$average_issues_comments_length[8]
dataset1$issues_closed[8]
dataset1$issues_opened[8]
dataset1$commits_authored[8]

c=dataset2
c1=dataset12

#KMEANS gia to c kai gia to c1 me kentra se prwth fash ta pio 
#antiproswpeutika noumera ths kathe omadas pou vrhka panw analoga
#me to correlation kai katw ti apotelesma tha eixa an apla tou
#elega vgale 4 kentra

model = kmeans(c, centers = t(data.frame(t(c[6281,]),t(c[5146,]),t(c
                                                                   [2398,]),t(c[927,]))))
model1 = kmeans(c1, centers = t(data.frame(t(c1[1629,]),t(c1[1246,]),t
                                           (c1[566,]),t(c1[1429,]))))
model
model$centers
model12 = kmeans(c1, centers = t(data.frame(t(c1[1629,]),t(c1
                                                           [1246,]),t(c1[566,]),t(c1[2067,]))))
model12
model1
modela = kmeans(c, centers = 4)
modela
modelb = kmeans(c1, centers = 4)
modelb

#vlepw tis times twn pio antiproswpeutikwn stoixeiwn gia na dw se poies
#omades ta evale
model$cluster(6281)
model$cluster[6281]
model$cluster[5146]
model$cluster[2398]
model$cluster[927]
model1$cluster[1629]
model1$cluster[1246]
model1$cluster[566]
model1$cluster[1429]
model12$cluster[1629]
model12$cluster[1246]
model12$cluster[566]
model12$cluster[2067]
modela$cluster[6281]
modela$cluster[5146]
modela$cluster[2398]
modela$cluster[927]
modelb$cluster[1629]
modelb$cluster[1246]
modelb$cluster[566]
modelb$cluster[1429]
modelb$cluster[2067]

#Ypologismos twn cohesion seperation shilhouette kai mean_silhouette
#gia ta montela kai axiologhsh tous me vash autes tis metrikes

cohesion = model$tot.withinss
cohesion
separation = model$betweenss
separation
cohesion1 = model1$tot.withinss
cohesion1
separation1 = model1$betweenss
separation1
cohesion12 = model12$tot.withinss
cohesion12
separation12 = model12$betweenss
separation12
cohesiona = modela$tot.withinss
cohesiona
separationa = modela$betweenss
separationa
cohesionb = modelb$tot.withinss
cohesionb
separationb = modelb$betweenss
separationb
model_silhouette = silhouette(model$cluster, dist(c))
library(cluster)
model_silhouette = silhouette(model$cluster, dist(c))
mean_silhouette = mean(model_silhouette[, 3])
mean_silhouette

model_silhouette1 = silhouette(model1$cluster, dist(c1))
mean_silhouette1 = mean(model_silhouette[, 3])
mean_silhouette1 = mean(model_silhouette1[, 3])
mean_silhouette1

model_silhouette12 = silhouette(model12$cluster, dist(c1))
mean_silhouette12 = mean(model_silhouette12[, 3])
mean_silhouette12

model_silhouettea = silhouette(modela$cluster, dist(c))
mean_silhouettea = mean(model_silhouettea[, 3])
mean_silhouettea

model_silhouetteb = silhouette(modelb$cluster, dist(c1))
mean_silhouetteb = mean(model_silhouetteb[, 3])
mean_silhouetteb


model
c

#Ektimhsh tou arithmou twn clusters pou tha eprepe o kmeans na 
#diaxwrisei gia na exw to elaxistou SSE h cohesion gia ta c
#kai c1

#gia to c

SSE <- (nrow(c) - 1) * sum(apply(c, 2, var))
for (i in 2:7970)
  SSE[i] <- kmeans(c, centers = i)$tot.withinss
SSE
min=SSE[1]
besti=1
for(i in 2:7970){
  if(SSE[i]<min){
    min=SSE[i]
    best1=i}
}
min
best1
c1

#gia to c1

SSE <- (nrow(c1) - 1) * sum(apply(c1, 2, var))
for (i in 2:2089)
  SSE[i] <- kmeans(c1, centers = i)$tot.withinss
SSE
min1=SSE[1]
best1i
for(i in 2:2089){
  if(SSE[i]<min1){
    min1=SSE[i]
    best1i=i}
}
min1
best1i

#HCLINK
#HCSINGLE gia to c
d = dist(c)
hc = hclust(d, method = "single")
clusters = cutree(hc, k = 4)

model_silhouette_single = silhouette(clusters, d)
mean_silhouette_single = mean(model_silhouette[, 3])
mean_silhouette_single

#HCComplete gia to c

hc_c = hclust(d, method = "complete")
clusters_c = cutree(hc_c, k = 4)
clusters
clusters[6281]
clusters[5146]
clusters[2398]
clusters[927]
clusters_c[6281]
clusters_c[5146]
clusters_c[5146]
clusters_c[2398]
clusters_c[927]

model_silhouette_complete = silhouette(clusters, d)
mean_silhouette_complete = mean(model_silhouette[, 3])
mean_silhouette_complete

#HCSINGLE c1

d1 = dist(c1)
hc1 = hclust(d1, method = "single")
clusters1 = cutree(hc1, k = 4)
model_silhouette_single1 = silhouette(clusters1, d1)
mean_silhouette_single1= mean(model_silhouette[, 3])
mean_silhouette_single1

#HCCOMPLETE c1
d1 = dist(c1)
hc1_c = hclust(d1, method = "complete")
clusters1_c = cutree(hc1_c, k = 4)
model_silhouette_complete1 = silhouette(clusters1_c, d1)
mean_silhouette_complete1= mean(model_silhouette[, 3])
mean_silhouette_complete1

#HCSINGLE KALUTERO SSE gia ton single_link tou c
slc = c()
for (i in 2:7970){
  clusters_s_b= cutree(hc, k = i)
  slc [i-1] = mean(silhouette(clusters_s_b, d)[, 3])
}
maxi_s_b=0
max_s_b=slc[1]
for(i in 2:7970){
  if(slc[i]>max_s_b){
    max_s_b=slc[i]
    maxi_s_b=i}
}
max_s_b
maxi_s_b

#HCSINGLE KALUTERO SSE gia ton complete_link tou c
slc = c()
for (i in 2:7970){
  clusters_c_b= cutree(hc_c, k = i)
  slc [i-1] = mean(silhouette(clusters_c_b, d)[, 3])
}
maxi_c_b=0
max_c_b=slc[1]
for(i in 2:7970){
  if(slc[i]>max_C_b){
    max_c_b=slc[i]
    maxi_c_b=i}
}
max_c_b
maxi_c_b

#HCSINGLE KALUTERO SSE gia ton single_link tou c1
slc = c()
for (i in 2:2089){
  clusters_s_b1= cutree(hc1, k = i)
  slc [i-1] = mean(silhouette(clusters_s_b1, d)[, 3])
}
maxi_s_b1=0
max_s_b1=slc[1]
for(i in 2:2089){
  if(slc[i]>max_s_b1){
    max_s_b1=slc[i]
    maxi_s_b1=i}
}
max_s_b1
maxi_s_b1

#HCSINGLE KALUTERO SSE gia ton complete_link tou c1
slc = c()
for (i in 2:2089){
  clusters_c_b1= cutree(hc1, k = i)
  slc [i-1] = mean(silhouette(clusters_c_b1, d)[, 3])
}
maxi_c_b1=0
max_c_b1=slc[1]
for(i in 2:2089){
  if(slc[i]>max_c_b1){
    max_c_b1=slc[i]
    maxi_c_b1=i}
}
max_c_b1
maxi_c_b1

#DBSCAN gia to c1
library(cluster)
library(dbscan)


#tha mporousa na kanw kanonikopoihsh alla den tha allaxoun ta 
#apotelesmata etsi
#c1 = as.data.frame(lapply(c1, function(c1) (c1 - min(c1))/(max(c1) - 
#min(c1))
#o stoxos mou einai na vrw tis times eps kai minPts wste ta dedomena
#mou na clusteropoihthoun se 4 omades..meta apo peiramata katelhxa edw

model_db1 = dbscan(c1, eps =100000, minPts = 2)

model$cluster
d1 = dist(c1)
model_silhouette_db1 = silhouette(model_db1$cluster, d1)
mean_silhouette_db1 = mean(model_silhouette_db1[, 3])
mean_silhouette_db1
model_db1


#DBSCAN gia to c
library(cluster)
library(dbscan)


#tha mporousa na kanw kanonikopoihsh alla den tha allaxoun ta 
#apotelesmata etsi
#c = as.data.frame(lapply(c, function(c) (c - min(c))/(max(c) - #min
(c))
#o stoxos mou einai na vrw tis times eps kai minPts wste ta dedomena
#mou na clusteropoihthoun se 4 omades..meta apo peiramata katelhxa edw

model_db = dbscan(c, eps =14000, minPts = 4)

model$cluster
d = dist(c)
model_silhouette_db = silhouette(model_db$cluster, d)
mean_silhouette_db = mean(model_silhouette_db[, 3])
mean_silhouette_db
model_db


#GMM gia to c

library(mixtools)

model_g = mvnormalmixEM(c, k = 4 , epsilon = 0.001)
clusters_g = max.col(model_g$posterior)
centers_g = matrix(unlist(model_g$mu), byrow = TRUE, ncol = 2)

model_g$mu, 
model_g$sigma
model_g$lambda 
model_g$loglik

model_silhouette_g = silhouette(clusters_g, dist(c))
plot(model_silhouette_g)

c_ord = c[order(clusters_g)
          heatmap(as.matrix(dist(c _ord)), Rowv = NA, Colv = NA, col = 
                    heat.colors(256), revC = TRUE)
          
          #GMM gia to c1
          
          model_g_1 = mvnormalmixEM(c1, k = 4 , epsilon = 0.001)
          clusters_g_1 = max.col(model_g_1$posterior)
          centers_g_1 = matrix(unlist(model_g_1$mu), byrow = TRUE, ncol = 2)
          
          model_g_1$mu, 
          model_g_1$sigma
          model_g_1$lambda 
          model_g_1$loglik
          
          model_silhouette_g_1 = silhouette(clusters_g_1, dist(c1))
          plot(model_silhouette_g_1)
          
          c_ord1 = c1[order(clusters_g_1)
                      heatmap(as.matrix(dist(c _ord1)), Rowv = NA, Colv = NA, col = 
                                heat.colors(256), revC = TRUE)
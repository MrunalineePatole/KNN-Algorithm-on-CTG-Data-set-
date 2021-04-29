####KNN on CTG Dataset


ctg<-read.csv("E:/datasets/CTG.csv")
ctg$NSP<-factor(ctg$NSP)
ctg_sample=sample(2,nrow(ctg),replace = TRUE,prob = c(0.8,.2))
ctg_train=ctg[ctg_sample==1,]
ctg_test=ctg[ctg_sample==2,]


####library class required for KNN
library(class)

num<-c(1:60)
for (i in num)
{
knn_ctg<-knn(train =   ctg_train,test=ctg_test,cl=ctg_train$NSP,k=i)



##Print Confusion Matrix
tab_Con<-table(knn_ctg,ctg_test$NSP)


####To Calculate accuracy
acc<-sum(diag(tab_Con))*100/sum(tab_Con)
l1<-append(l1,acc)


}
l1
l1=unlist(l1)
plot(l1)


###Value of K is stable around 32 so we can execute it for K=32
####library class required for KNN
library(class)
  knn_ctg<-knn(train =   ctg_train,test=ctg_test,cl=ctg_train$NSP,k=i)
  knn_ctg
  
  
  ##Print Confusion Matrix
  tab_Con<-table(knn_ctg,ctg_test$NSP)
  tab_Con
  
  ####To Calculate accuracy
  acc<-sum(diag(tab_Con))*100/sum(tab_Con)
  acc
  
  
  
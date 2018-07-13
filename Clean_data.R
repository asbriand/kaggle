train<-read.csv(file="train.csv")

for(i in colnames(train[,-(1:2)])){
  #browser()
  s<-as.numeric(unclass(summary(train[,colnames(train)==i])))
  
  if(all(s==as.numeric(0)))  train[,colnames(train)==i]<-NULL
}


write.csv(x = train,row.names = F,file = "train_unempty.csv")


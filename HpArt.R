require(RCurl)
require(ggplot2)
hparturl<-"https://raw.githubusercontent.com/pmsn23/MSDS-6371/master/train.csv"
hpart<-read.csv(text=getURL(hparturl), header=T)

hpartnewurl<-"https://raw.githubusercontent.com/pmsn23/MSDS-6371/master/train_new.csv"
hpartnew<-read.csv(text=getURL(hpartnewurl), header=T)

hpartnew<-read.csv("train_dummy-2.csv", header=T)
hparttest<-read.csv("train_new.csv", header=T)

# Avoid Science notation.
options(scipen=5)

hist(hpart$SalePrice)
hist(hpart$GrLivArea)

# Elegant way of checking missing value
for (Var in names(hparttest)) {
  missing <- sum(is.na(hparttest[,Var]))
  if (missing > 0) {
    print(c(Var,missing))
  }
}
hpart$logSalePrice<-log(hpart$SalePrice)
hpart$logGrLivArea<-log(hpart$GrLivArea)
# with couple of outliers.
hpart1<-subset(hpart, Neighborhood %in% c("Edwards","BrkSide","NAmes"))

ggplot(hpart1, aes(x=GrLivArea, y=SalePrice, color=Neighborhood)) +
  geom_point(size=3) +
  geom_text(aes(label=ifelse(GrLivArea > 4000, GrLivArea, "")),hjust=0,vjust=0)+
  geom_text(aes(label=ifelse(SalePrice > 300000, SalePrice, "")),hjust=0,vjust=0)+
  geom_smooth(method="lm", se=FALSE) +
  theme_bw()

myLm <- lm(logSalePrice ~ logGrLivArea, data=hpart1)
par(mfrow = c(2, 2))
plot(myLm)  

sm<-summary(myLm)
confint(myLm)
sm

# Excluding outliers.
hpart2<-subset(hpart, Neighborhood %in% c("Edwards","BrkSide","NAmes") & 
                 GrLivArea < 4000 &
                 SalePrice < 300000)

ggplot(hpart2, aes(x=GrLivArea, y=SalePrice, color=Neighborhood)) +
  geom_point(size=3) +
  geom_smooth(method="lm", se=FALSE) +
  theme_bw()

myLm1 <- lm(SalePrice ~ ., data=hpartnew)
plot(myLm1)  

sm1<-summary(myLm1)
confint(myLm1)
sm1

require(mice)
impute<-mice(hparttest, m=5, maxit=5, method='cart',seed=1500)

hpart_complete<-complete(impute)

for (Var in names(hpart_complete)) {
  missing <- sum(is.na(hpart_complete[,Var]))
  if (missing > 0) {
    print(c(Var,missing))
  }
}

write.csv(hpart_complete,"test_new.csv")

rf<-randomForest(SalePrice ~.,data=hpartnew, mtry=10, ntree=500)


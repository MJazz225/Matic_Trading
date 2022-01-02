##加密貨幣聯動 Binance Data


################################################
#
#              MATIC交易策略
#       做多在支撐綫上買進，乖離率過高賣出
#       做空在壓力綫下買進，乖離率過高賣出
#
################################################
rm(list=ls())
setwd("D:\\BinanceData")

MATIC <- read.csv("Binance_MATICUSDT_minute.csv", sep = ",", header = FALSE, stringsAsFactors = FALSE) #MATIC
colnames(MATIC) <- MATIC[2,]
MATIC <- MATIC[c(3:nrow(MATIC)),]
MATIC <- MATIC[,-1]
rawmatic <- MATIC[c(nrow(MATIC):1),]
rawmatic <- rawmatic[-1:-4,]
matic <- NULL

for (i in 1:nrow(MATIC)) {
  
  cat(i, "/", nrow(MATIC))
  
  tem <- MATIC[i:i+5,]
  DATE <- tem[1,1]
  OPEN <- tem[1,3]
  temhigh <- tem[order(tem[,4], decreasing = F),]
  HIGH <- temhigh[1,4]
  temlow <- tem[order(tem[,5], decreasing = T),]
  LOW <- temlow[1,4]
  CLOSE <- tem[,6]
  VOLUME_MATIC <- sum(tem[,7])
  VOLUME_USDT <- sum(tem[,8])
  TRADE_COUNT <- sum(tem[,9])
  
}















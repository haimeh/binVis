library("rgl")

rawData <- readBin("/home/jaimerilian/gitpackages/st-luke/st","raw",9999999)
#rawData <- readBin("/home/jaimerilian/gitpackages/dwm-luke/dwm","raw",9999999)
#rawData <- readBin("/home/jaimerilian/Documents/game/terminalGameEngine/testGame","raw",9999999)

n <- length(rawData)
plot3d(x=rawData[1:n],
       y=rawData[c(2:n,1)],
       z=rawData[c(3:n,1:2)], 
       col=cbind(as.integer(rawData[c(4:n,1:3)]),
		 as.integer(rawData[c(5:n,1:4)]),
		 as.integer(rawData[c(6:n,1:5)]))+1,
       alpha=.5)

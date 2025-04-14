##########################################
##Generate Simulated Data from Lecture 3##
##########################################

##Initial Example

set.seed(27)
n <- 1000
sim_data <- data.frame(X=runif(n, min=.5, max=1))
sim_data <- transform(sim_data, #add Y
                 Y=rnorm(n, 4*X, sd=.5))

summary(sim_data)
write.csv(sim_data,"data/sim_data.csv", row.names=FALSE)

plot(sim_data$X, sim_data$Y, xlab="X", ylab="Y")


##Change Strength of Relationship

set.seed(27)
n <- 1000
sim_data2 <- data.frame(X=runif(n, min=.5, max=1))
sim_data2 <- transform(sim_data2, #add Y
                      Y=rnorm(n, 2*X, sd=.5))

summary(sim_data2)
write.csv(sim_data2,"data/sim_data2.csv", row.names=FALSE)

plot(sim_data2$X, sim_data2$Y, xlab="X", ylab="Y")

par(mfrow = c(1, 2))
plot(sim_data$X, sim_data$Y, main="mean=4X", xlab="X", ylab="Y", ylim=c(0,5))
plot(sim_data2$X, sim_data2$Y, main="mean=2X", xlab="X", ylab="Y", ylim=c(0,5))


# Inserting library for solving problems
library(lpSolve)
########## Topic 1: Linear programming ####################

#### Worked examples for minimizing and maximizing the given operations which are linear problems.
##### Example 1  ######
obj.fun=c(2,-1)
constr=matrix(c(1,-1,2,1),ncol=2,byrow = TRUE)
constr
constr.dir=c("<=",">=")
rhs=c(1,6)
##solving problem
prod.sol=lp("max",obj.fun,constr,constr.dir,rhs,compute.sens=TRUE)
show(prod.sol)
###accesing output
prod.sol
prod.sol$solution 
prod.sol$dual

##### Example 2 ##############
obj1=c(-1,2)
constr=matrix(c(-1,3,1,1,1,-1),ncol=2,byrow = TRUE)
constr
constr.dir=c("<=","<=","<=")
rhs=c(10,6,2)
##solving problem
prod.sol=lp("min",obj1,constr,constr.dir,rhs,compute.sens=TRUE)
show(prod.sol)
###accesing output
prod.sol$solution 
prod.sol$dual


##### Example 3 ##############
obj2=c(3,4)
constr=matrix(c(1,-2,-1,2),ncol=2,byrow = TRUE)
constr
constr.dir=c("<=",">=")
rhs=c(-1,0)
##solving problem
prod.sol=lp("max",obj2,constr,constr.dir,rhs,compute.sens=TRUE)
show(prod.sol)
###accesing output
prod.sol$solution 
prod.sol$duals

########### Topic 2: Integer programming ############

#### Worked examples for minimizing and maximizing the given operations which are integer problems.
##### Example 1 ##############
obj1=c(8,5)
constr=matrix(c(1,1,9,5),ncol=2,byrow = TRUE)
constr
constr.dir=c("<=","<=")
rhs=c(6,45)
##solving problem
prod.sol=lp("max",obj1,constr,constr.dir,rhs,all.int=T,compute.sens=TRUE)
show(prod.sol)
###accesing output
prod.sol$solution 
prod.sol$dual

##### Example 2 ##############
obj2=c(5,2)
constr=matrix(c(3,1,1,1),ncol=2,byrow = TRUE)
constr
constr.dir=c("<=","<=")
rhs=c(12,5)
##solving problem
prod.sol=lp("max",obj2,constr,constr.dir,rhs,all.int=T,compute.sens=TRUE)
show(prod.sol)
###accesing output
prod.sol$solution 
prod.sol$dual


##### Example 3 ##############
obj3=c(2,3)
constr=matrix(c(1,2,3,4),ncol=2,byrow = TRUE)
constr
constr.dir=c("<=","<=")
rhs=c(10,25)
##solving problem
prod.sol=lp("max",obj3,constr,constr.dir,rhs,all.int=T,compute.sens=TRUE)
show(prod.sol)
###accesing output
prod.sol$solution 
prod.sol$duals

############## Topic 3: 0-1 IP problems ######

#### Worked examples for minimizing and maximizing the given operations which are 0-1 problems.
##### Example 1 ##############
obj12=c(40,80,10,10,4,20,60)
constr=matrix(c(40,50,30,10,10,40,30),ncol=7,byrow = TRUE)
constr
constr.dir=c("<=")
rhs=c(100)
##solving problem
prod.sol=lp("max",obj12,constr,constr.dir,rhs,all.bin=T,compute.sens=TRUE)
show(prod.sol)
###accesing output
prod.sol$solution 
prod.sol$duals


##### Example 2 ##############
obj13=c(1,1,1,1,1,1)
constr=matrix(c(1,1,0,0,0,0,
                1,1,0,0,0,1,
                0,0,1,1,0,0,
                0,0,1,1,1,0,
                0,0,0,1,1,1,
                0,1,0,0,1,1),ncol=6,byrow = TRUE)
constr
constr.dir=rep(">=",6)
rhs=rep(1,1,1,1,1,1)
##solving problem
prod.sol=lp("min",obj13,constr,constr.dir,rhs,all.bin=T,compute.sens=TRUE)
show(prod.sol)
###accesing output
prod.sol$solution 
prod.sol$duals


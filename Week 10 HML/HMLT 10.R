#Task 1
name <- readline("Enter your name:")
age <-  readline("Enter your age please")
name_age <- paste("Welcome", name, "you are", age, "years old!")
print (name_age)

#Task 2
name = "programing"; 
num1 =  34; 
num2 =  0.9
number = c(12, 33, 30, 76, 45, 65)
print(ls())
print("total object in memory:")
print(ls.str())

#Task 3
print("Sequence of numbers from 20 to 50:")
print(seq(20,50))
print("Mean of numbers from 20 to 60:")
print(mean(20:60))
print("Sum of numbers from 51 to 91:")
print(sum(51:91))

#Task 4
Q = sample(-50:50, 10, replace=TRUE)
print("Content of the vector:")
print("10 random integer values between -50 and +50:")
print(Q)
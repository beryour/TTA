#1. Write a R program to create 3 vectors a,b,c with 5 integers. 
#Combine the 3 vectors to become a 3x5 matrix where each column represents a vector.
#Print the content of the matrix. Plot a graph and label correctly.
a<-c(1:5)
b<-c(3:7)
c<-c(5:9)
m<-cbind(a,b,c)
print("Content of the said matrix:")
print(m)
matrix1 <- a
matrix2 <- b
matrix3 <- c
qplot(matrix1, matrix3, geom="boxplot")

qplot(matrix1, matrix3, shape = factor(matrix2)
      geom=c("violin"), trim = FALSE)

qplot(matrix1, matrix3, shape = factor(matrix2))


#2. Write a R program to create a Data frame which contain details of 5 employees and display the details
#(name, Age, Gender, Role and Length of service).
name = c('Fabian', 'Fregene', 'Eva', 'Bukky', 'Lawrence')
age = c(38, 39, 35, 32, 38)
length_of_service = c(10, 5, 15, 7, 19)
gender = c('male', 'male', 'female', 'female', 'male')
role = c('operator', 'operator', 'technician', 'supervisor', 'engineer')
print("Original data frame:")
df = data.frame(name, age, length_of_service, gender, role)  
print(df)


#3. Import the GGPLOT2 library and plot a graph using the qplot function.
#X axis is the sequence of 1:20 and the y axis is the x^2. Label the graph appropriately.
x <- 1:20
y <- x ^ 2
qplot(x, y, geom=c("point", "line"), xlab = ("Amount of Gas"), ylab = ("mph Achieved"), 
      main = ("Gas Conversion To Distance Achieved"))

#4. Creare a simple bar plot of five subjects
marks = c(60, 98, 76, 82, 55)
barplot(marks,
        main = "Comparing the marks of five subjects", xlab = "Subjects",
        ylab = "Marks", names.arg = c("Maths", "English", "Science", "Sports.", "Music"),
        col = "darkred", horiz = FALSE)

library(plyr)

Student_assignment_6 <- read.table("C:/Users/Laptop HH/Downloads/Assignment 6 Dataset.txt", header = TRUE, sep = ",")
head(Student_assignment_6)

StudentAverage = ddply(Student_assignment_6, "Sex", transform, Grade.Average=mean(Grade))
StudentAverage

sex = StudentAverage$Grade.Average
mean(sex)

students_gendered_mean <- data.frame(StudentAverage)
table <- write.table(StudentAverage, "Students_Gendered_Mean.txt", sep = ",")

i_students <- subset(Student_assignment_6, grepl("i", Student_assignment_6$Name, ignore.case=T))
i_students

write.csv(i_students, file.choose())
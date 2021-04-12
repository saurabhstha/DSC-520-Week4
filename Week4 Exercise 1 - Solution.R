# Assignment: Score
# Name: Shrestha, Saurabh
# Date: 2021-04-10

"1.What are the observational units in this study?
  -> Observational units are what you take measurement on. In test score it is two
section: course grade and total points earned."

"2. Identify the variables....
 ->   Categeorical: Sport, Regular
      Quantitative: Score and Total points earned"

"3.Create one variable..."

class_data=read.csv("scores.csv")     
sports=subset(class_data,Section=="Sports")
regular = subset(class_data, Section == "Regular")

"4  Use the Plot function to plot each..."
library(ggplot2)
ggplot(regular, aes(x=Score, y=Count)) + geom_point() + ggtitle("Regular Section Point Distribution") +
  theme(plot.title = element_text(hjust = 0.7)) + xlab("Score") + ylab("Number of Students")

ggplot(sports, aes(x=Score, y=Count)) + geom_point() + ggtitle("Sport Section Point Distribution") +
  theme(plot.title = element_text(hjust = 0.7)) + xlab("Score") + ylab("Number of Students")

"a. Comparing and contrasting....
->  Regular student tended to score more score in comparision to sports
students. As we can see from the graph that 20 number of students score higher
that 330 whereas from regular section whereas 10 number of students were
the count who scored more than 330 from sports section.
"
"b. Did every student in one section score...
->  Based on the graph, we cannot conclude that every student in one section
scored more points than every student in the other section. But based on 
statistical tendency(mean,median,mode), regular section student were more
in frequency(number of student) who received high score in comparision to sports
section"

"c. What could be one additional variable...
->  Additional variable that was not mentioned in the narrative that could be
influencing the point distributions between the two sections could be duration 
of the class(how long the class was held).
The reason being there have been statistical evidence which proved that length
of the class can alter grade. Higher length of the class led to lower grade."


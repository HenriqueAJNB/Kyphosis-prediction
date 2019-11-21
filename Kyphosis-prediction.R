# There are several decision tree packages in R. We will use rpart here.
install.packages('rpart')
library(rpart)

# Let's use a dataset that comes with the rpart package
str(kyphosis)
head(kyphosis)
View(kyphosis)
?kyphosis

# Creating a Decision Tree model
?rpart
arvore <- rpart(Kyphosis ~ . , method = 'class', data = kyphosis)
class(arvore)
arvore

# Using printcp to visualize the result from Decision Tree
printcp(arvore)

# Viewing the tree (perform a function for the plot and another for the text in the plot)
# Zoom in to see the graph better
plot(arvore, uniform = TRUE, main = "Decision Tree in R")
text(arvore, use.n = TRUE, all = TRUE)

# This other package makes the view more readable
install.packages('rpart.plot')
library(rpart.plot)
prp(arvore)
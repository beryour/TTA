#The dataset Midwest is used in this HLT
data(midwest)
df <- midwest[, c("popdensity", "popwhite", "popblack", "county", "state", "PID")]
head(df)
qplot(popdensity, state, data = midwest, geom = c("point", "smooth"))
#Plotting popdensity with area and using state as colour factor
qplot(popdensity, area, data = midwest, color = factor(state),
      geom=c("point", "smooth"))
#Plotting popdensity with PID and using state as colour factor
qplot(popdensity, PID, data = midwest, color = factor(state),
      geom=c("point", "smooth"))
# Change the size of points according to 
# the values of a continuous variable(popdensity)
qplot(popdensity, PID, data = midwest, size = popdensity)
# Change point shapes by groups
qplot(popdensity, PID, data = midwest, shape = factor(state))
#Showing the numbers(Text) on the graph
qplot(popdensity, PID, data = midwest, label = rownames(midwest), 
      geom=c("point", "text"),
      hjust=0, vjust=0)

# Box plot showing percblack vs states
qplot(percblack, state, data = midwest, 
      geom=c("boxplot"))
# Dot plot
qplot(percblack, state, data = midwest, 
      geom=c("dotplot"), 
      stackdir = "center", binaxis = "y")
# Violin plot
qplot(percblack, state, data = midwest, 
      geom=c("violin"), trim = FALSE)

# Box plot showing percwhite vs state
qplot(percwhite, state, data = midwest, 
      geom=c("boxplot", "jitter"))
# Dot plot
qplot(percwhite, state, data = midwest, 
      geom = "dotplot", stackdir = "center", binaxis = "y")
library('ggplot2')
# Read dataset bone
ob =read.csv("bone.csv")
#Check names column in dataset
names(ob)
#D Define the ggplot function
p =ggplot(ob, aes(x=age, y= fnbmd, fill=gender))
# Add point in graph
p + geom_point()
# Add color by gender
p + geom_point(aes(col=gender))
p + geom_point(aes(col=gender)) +geom_smooth(method = "lm")
p + geom_point(aes(col=gender)) +geom_smooth(method = "lm") + xlab("Age") + ylab("Body BMD")
p + geom_point(aes(col=gender)) +geom_smooth(method = "lm") + xlab("Age") + ylab("Body BMD") + theme_classic()
p + geom_point(aes(col=gender)) +geom_smooth(method = "lm") + xlab("Age") + ylab("Body BMD") + theme_classic()
p + geom_point(aes(col=gender)) +geom_smooth(method = "lm", formula = y~x +I(x^2)) + xlab("Age") + ylab("Body BMD") + theme_classic()

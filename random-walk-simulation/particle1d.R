n = 100;
num = 10000;
x = numeric(num)
y = sample(1:100, size = num, replace = TRUE)
set.seed(1234);
for (i in 1:n) {
  for (j in 1:num) {
    t = sample(c(-1,1), size = 1,
               prob = c(0.5, 0.5), replace = TRUE)
    x[j] = x[j] + t
  }
}

p = data.frame(x, y)
library(ggplot2)

ggplot(p, aes(x = x)) + geom_bar()+ 
theme_bw() + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())



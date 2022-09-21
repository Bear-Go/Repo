n = 100;
num = 10000;
x = numeric(num)
y = numeric(num)
set.seed(1234);
for (i in 1:n) {
  for (j in 1:num) {
    t = sample(1:4, size = 1,
               prob = c(0.25,0.25,0.25,0.25), replace = TRUE)
    if (t == 1) {
      x[j] = x[j] + 1;
    }
    else if (t == 2) {
      x[j] = x[j] - 1;
    }
    else if (t == 3) {
      y[j] = y[j] + 1;
    }
    else {
      y[j] = y[j] - 1;
    }
  }
}

library(ggplot2)
p = data.frame(x,y)
ggplot(p, aes(x = x, y = y)) + geom_point() + 
theme_bw() + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
geom_jitter(position = position_jitter(width = 0.5, height = 0.5))
ggsave("p2.png")

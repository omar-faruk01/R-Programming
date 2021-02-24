#1
ggplot(data = mpg) +
  geom_point(
    mapping = aes(x = displ, y = hwy), color = "blue")

#2
View(mpg)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = cyl, alpha = cty, shape = class))

#3
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = displ, color = hwy))

#4
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, stroke = 21))

#5
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = displ < 5))

#6
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))+
  facet_wrap(~ cty, nrow = 2)	

#7
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)

#8
ggplot(data = mpg) +
  geom_point(
    mapping = aes(x = displ, y = hwy, color = class), show.legend = FALSE)
#9
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth()

ggplot() +
  geom_point(
    data = mpg,
    mapping = aes(x = displ, y = hwy)
  ) +
  geom_smooth(
    data = mpg,
    mapping = aes(x = displ, y = hwy)
  )

#10
ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) +
  geom_point(position="jitter")



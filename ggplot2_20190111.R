library(gapminder)
library(ggplot2)
library(dplyr)

n <-
  gapminder %>%
  mutate(gdpPercap = mean(gdpPercap),
         lifeExp = min(lifeExp)) %>%
  group_by(continent) %>%
  summarize(gdpPercap = mean(gdpPercap),
            lifeExp = min(lifeExp),
            n = n())

ggplot(gapminder, aes(gdpPercap, lifeExp, color = continent)) +
  geom_point(alpha = 0.3, size = 0.5) +
  geom_text(data = n, aes(color = NULL, label = sprintf("n = %d", n))) +
  scale_x_log10() +
  geom_smooth(method = "lm") +
  facet_wrap(~ continent)

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point()
ggsave(file = "life_expectancy.pdf")
ggplot(data = gapminder, aes(x = year, y = lifeExp)) + geom_point()
ggsave(file = "life_expectancy.pdf")

ggplot(gapminder, aes(gdpPercap, lifeExp, color = continent)) +
  geom_point(alpha = 0.3, size = 0.5) +
  scale_x_log10() +
  geom_smooth(method = "lm")

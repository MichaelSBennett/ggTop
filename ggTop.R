
topHist <- function(data, x, bw, xLab) {
'"Histogram plot:
  data = data
  x = data$variable
  bw = binwidth
    max(data$x) - min(data$x) / sqrt(n data)
  xLab = "variable label"
"'
med <- paste0("Median: ", median(x))
data %>%
    ggplot(aes(x = x, fill = cut(x, 100))) +
    geom_histogram(binwidth = bw, colour = "goldenrod2", fill = "darkblue") +
    geom_density(aes(y = ..count.. * bw), fill = "blue", alpha = .3,
                 col = "gold") +
    geom_vline(xintercept = median(data$x), linetype = 'dashed',
               col = 'white') +
    theme_bw() +
  theme(axis.title.y = element_blank()) +
    labs(x = xLab, subtitle = med)
}

topBox <- function(data, x, y, xLab, yLab){
'"Boxplot:
  data = data
  x = data$variable
  y = data$variable
  xLab = "x label"
  yLab = "y label"
"'
data %>%
  ggplot() +
  geom_boxplot(aes(x, y, group = 1), fill = 'lightblue') +
  theme_bw() +
  labs(x = xLab, y = yLab)
}

install.packages("ggplot2")
head(penguins)

ggplot(data = penguins) + geom_point

rs.restartR()
.rs.restartR()
library(tidyverse)
head(penguins)

#scatter plot with linear regression line
 
ggplot(data = penguins, aes( x= flipper_length_mm, y= body_mass_g ,"blue")) + 
  geom_point( size = 2 ) + 
  geom_smooth(method = "lm")

# plot style in another format

ggplot(data = penguins) +
  geom_point(mapping = aes(x= flipper_length_mm, y= body_mass_g))

#another scatter plot with bill fields in data 

ggplot(data = penguins) +
  geom_point(mapping = aes(x= bill_length_mm, y= bill_depth_mm))

# changing aesthetics of plot (change by species via color)

ggplot(data = penguins) +
  geom_point(mapping = aes(x= flipper_length_mm, y= body_mass_g,color = species))


# changing aesthetics of plot (change by species via shape and color)

ggplot(data = penguins) +
  geom_point(mapping = aes(x= flipper_length_mm, y= body_mass_g,shape = species, color = species))


# changing aesthetics of plot (change by species via size ,shape and color)

ggplot(data = penguins) +
  geom_point(mapping = aes(x= flipper_length_mm, y= body_mass_g,shape = species, color = species, size = species))

# changing aesthetics of plot (change by hue alpha)

ggplot(data = penguins) +
  geom_point(mapping = aes(x= flipper_length_mm, y= body_mass_g, alpha = species))

# changing color of plot 

ggplot(data = penguins) +
  geom_point(mapping = aes(x= flipper_length_mm, y= body_mass_g,shape = species),color = "salmon")


# changing geoms  (line smooth graph)

ggplot(data = penguins) +
  geom_smooth(mapping = aes(x= flipper_length_mm, y= body_mass_g))

# changing geoms of plot (smooth and plot together)

ggplot(data = penguins) +
  geom_smooth(mapping = aes(x= flipper_length_mm, y= body_mass_g)) +
  geom_point(mapping = aes(x= flipper_length_mm, y= body_mass_g))

# changing geoms of plot (smoothing with large data data with plot)

ggplot(data = penguins) +
  geom_smooth(mapping = aes(x= flipper_length_mm, y= body_mass_g), method = "gam") +
  geom_point(mapping = aes(x= flipper_length_mm, y= body_mass_g))


# different lines for each species

ggplot(data = penguins) +
  geom_smooth(mapping = aes(x= flipper_length_mm, y= body_mass_g, linetype = species)) 

#more visible plotting

# changing geoms of plot (line and plot together)

ggplot(data = penguins) +
  geom_jitter(mapping = aes(x= flipper_length_mm, y= body_mass_g)) 


#bar graphs (no y axis default count is added instead)

ggplot(data=diamonds)+
  geom_bar(mapping = aes(x=cut, fill = cut))

#bar graphs (colored and stacked with another field)

ggplot(data=diamonds)+
  geom_bar(mapping = aes(x=cut, fill = clarity))



## Facet functions let you display smaller groups, or subsets, of your data)

# facet wrap (creating multiple graphs based on one variable) 

ggplot(data = penguins) +
  geom_point(mapping = aes(x= flipper_length_mm, y= body_mass_g,color = species)) +
  facet_wrap(~species)


# facet wrap bar graphs (colored and stacked with another variable)

ggplot(data=diamonds)+
  geom_bar(mapping = aes(x=color, fill = cut))+
  facet_wrap(~cut)
  
#facet grid (creating multiple graphs based on two variables horizontal and vertical )

ggplot(data = penguins) +
  geom_point(mapping = aes(x= flipper_length_mm, y= body_mass_g,color = species)) +
  facet_grid(sex~species)

## Labels & Annotations

#Adding titles,subtitles,captions

plot_1 <- ggplot(data = penguins) +
  geom_point(mapping = aes(x= flipper_length_mm, y= body_mass_g,color = species)) +
  labs(title= "Palmer Penguins: Body Mass vs. Flipper Length",subtitle = "Sample of 3 Penguin Species", caption = "collected by Dr.Kirsten Gorman " )

#Adding Annotation  to Data

ggplot(data = penguins) +
  geom_point(mapping = aes(x= flipper_length_mm, y= body_mass_g,color = species)) +
  annotate("text",x = 220, y= 3500, label = "The Gentoos Are the Largest",color = "magenta",
  fontface = "bold", size = 3.5, angle = 30)

##Saving the Graph

ggsave("Penguins_Mass_vs_Flipper_1.png", plot = plot_1)
#saving via code is 




















penguins %>%
  select(-species)
penguins %>%
  rename(island_new = island)

rename_with(penguins,tolower)

clean_names(penguins)
#sorting
penguins %>% 
  arrange(-bill_depth_mm)
penguins_2 <- penguins %>% 
  arrange(-bill_depth_mm)
View(penguins_2)

#summarize
penguins %>% group_by(island) %>%
  drop_na() %>% 
  summarize(mean_bill_length_mm = mean(bill_length_mm))

penguins %>% 
  group_by(island,species) %>%
  drop_na() %>% 
  summarize(max_bl = max(bill_length_mm),mean_bl = mean(bill_length_mm))

#filter

penguins %>% 
  drop_na() %>% 
  filter(species == "Adelie")















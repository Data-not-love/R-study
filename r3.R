penguins |>
  ggplot ( aes ( x = flipper_length_mm, y = body_mass_g))+
  geom_point( aes( colour = species, shape = species))


# sắp xếp các mức của một biến phân loại (factor) theo tần suất giảm dần (tức là mức xuất hiện nhiều nhất sẽ được sắp xếp trước).
# Để sắp xếp các mức theo tần suất tăng dần (ngược lại với fct_infreq()), 
# bạn có thể kết hợp fct_infreq() với hàm fct_rev() để đảo ngược thứ tự.
penguins |>
  ggplot ( aes ( x = fct_infreq(species))) +
  geom_bar()


penguins |>
  ggplot ( aes ( x = fct_rev(fct_infreq(species)))) +
  geom_bar()

# cách viết từ bản 4.1.0 trở 
##|> pipe operator
penguins |>
  ggplot ( aes ( x = body_mass_g)) +
  geom_histogram(binwidth = 200)

# cach viết truyền thống
ggplot(penguins, aes(x = body_mass_g)) +
  geom_histogram(binwidth = 200)

penguins |>
  ggplot ( aes ( x = body_mass_g)) +
  geom_density()


penguins |> 
  ggplot ( aes ( y = species)) +
  geom_density()


penguins |>
  ggplot ( aes ( x= species, y=body_mass_g)) +
  geom_boxplot()

# biến só và tiêu chí 
penguins |>
  ggplot ( aes (x=body_mass_g, color=species, fill = species)) +
  geom_density(linewidth = 0.5, alpha =0.5)

#2 biến tiêu chí
penguins |>
  ggplot ( aes ( x = island, fill = species)) +
  geom_bar(position ="fill") +
  labs (
    x = "ISLAND"
  ) 

# 2 biến số 
penguins |>
  ggplot ( aes ( x = flipper_length_mm, y= body_mass_g)) +
  geom_point () +
  labs (
    x = "Flipper Length (mm)",
    y = "Body Mass (g)"
  )


# nhiều hơn 3 biêns
penguins |>
  ggplot ( aes ( x = flipper_length_mm, y= body_mass_g)) +
  geom_point ( aes (color =species, shape = island))+
  facet_wrap(~island) +
  labs (
    x = "Flipper Length (mm)",
    y = "Body Mass (g)"
  )
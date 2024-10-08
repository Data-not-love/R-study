mpg |>
  ggplot ( aes ( x = hwy, y=displ)) +
  geom_point( aes (color=cty)) +
  labs(
    x = "Highway miles / gallon",
    y = "Displacement"
  )

mpg |>
  ggplot ( aes ( x = hwy, y=displ)) +
  geom_point( aes (color=cty, size = cty)) +
  labs(
    x = "Highway miles / gallon",
    y = "Displacement"
  )

mpg |>
  ggplot ( aes ( x = hwy, y=displ,shape = class)) +
  geom_point( aes (color=cty, size = cty)) +
  labs(
    x = "Highway miles / gallon",
    y = "Displacement"
  )
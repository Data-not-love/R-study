ggplot(data = penguins,
       mapping = aes (x=bill_length_mm, y=bill_depth_mm)
) +
geom_point()

# labs () = labels

ggplot ( data = penguins,
         mapping = aes (x=flipper_length_mm,y=body_mass_g)
) +
# map các điểm thuộc tính = bill_depth_mm
geom_point( mapping = aes (color=bill_depth_mm)) +
# vẽ theo đường cong
geom_smooth(method= 'loess')

ggplot(
  data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g, color = island) )+
  geom_point(mapping = aes (shape = island)) + 
  geom_smooth(se = FALSE)

# se = có hiển thị khoảng tin cậy hay ko
# có : xuất hiện vùng xám quanh đường. Ngược lại sẽ không hiện

ggplot(
  data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g) )+
  geom_point() + 
  geom_smooth()

ggplot() +
  geom_point(
    data = penguins,mapping = aes(x = flipper_length_mm, y = body_mass_g) )+
  geom_smooth(
    data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)
  )
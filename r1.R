# đưa ra thông tin cột, hàng
glimpse(penguins)
View(penguins)
# show thuộc tính vs data frame
penguins['island']
# show thuộc tính với $
penguins$island


# Tạo nền cho data, sau đó layer DATA đè lên
ggplot(data = penguins,
       # gán trực x vs y với 2 thuộc tính
       mapping = aes(x= flipper_length_mm, y = body_mass_g, color= species
                     #adđ color for each species
                     )
) + # Cho thấy các giấ trị trên biểu đồ
geom_point() +
geom_smooth(method ='lm')

ggplot(data = penguins,
       # mapping của nền biểu đồ, trục
       mapping = aes ( x=flipper_length_mm, y=body_mass_g)
) +
#mapping của từng giá trị
geom_point(mapping = aes(color = species,shape=species))+
geom_smooth(method ='lm')+
labs (
  title ="Correlation between Body Mass and Flipper Length of 3 different species",
  subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
  x = "Flipper length (mm)", y="Body Mass (g)",
  color ="Species", shape ="Species"
) +
scale_color_colorblind()




# mối liên hệ giữa chiều dài mỏ vs chiều sâu mỏ
ggplot(data = penguins,
       #mapping nền biều đồn và trục
       mapping = aes ( x=bill_length_mm, y=bill_depth_mm)
) +
geom_point( mapping = aes (color = species, shape = species))+
geom_smooth(method = 'lm') +
labs(
  title = "Correlation between Bill Depth and Bill Length",
  subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
  x = "Bill length (mm)", y="Bill Depth (mm)",
  color ="Species", shape ="Species"
) +
scale_color_colorblind()

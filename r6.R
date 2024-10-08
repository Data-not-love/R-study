flights |>
  filter( dest =="IAH") |>
  group_by(year, month, day)|>
  summarize (
    arr_delay = mean ( arr_delay, na.rm = TRUE)
  )


my_result <- flights |>
  filter ( day == 12 , month == 4) |>
  arrange( desc(sched_dep_time) )

print(my_result)
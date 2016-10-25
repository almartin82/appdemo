staff_histogram <- function(edfi_csv) {
  int_df <- read.csv(edfi_csv)
  int_df <- int_df %>%
    janitor::clean_names()
  
  ex <- ggplot(
    data = int_df,
    aes(x = school_id)
  ) + 
  geom_bar() +
  theme_bw()
  print(ex)
}
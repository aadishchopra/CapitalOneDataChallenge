removethesecolumns<-function(pattern_remove,dataset)
{
  #stricter type checking can also be used but leaving that out here 
  message(" removing column ")
  message(grep(pattern = pattern_remove,x = names(dataset),value = T))
  dataset %>% select(-contains(pattern_remove,ignore.case = TRUE))
  
}
removethesecolumns<-function(pattern_remove,dataset)
{
  #stricter type checking can also be used but leaving that out here 
  message(" removing column ")
  message(grep(pattern = pattern_remove,x = names(dataset),value = T))
  dataset %>% select(-contains(pattern_remove,ignore.case = TRUE))
}

analyze_distinct_values<-function(column)
{
  length(unique(column))
}

strip_money<-function(dataset,pattern){
  colnames(dataset[grep(pattern,colnames(dataset))])
}

remove_sign<-function(money,column)
{
  gsub(money,replacement = '',x =column )
}

noofNA<-function(column)
  {
  
  if(sum(is.na(column))>0)
  {
    sum(is.na(column))
  }
}



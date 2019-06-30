# data is assumed to be locally available 

# otherwise we can clone the repository and then do a pull 
# Load all the libraries 

required_packages<-c('knitr','dplyr','htmlTable','stringr','ggplot2')
load_required_packages<-function(required_packages){
  if(!require(required_packages,character.only = TRUE))
  {
    install.packages(required_packages,repos = "https://cloud.r-project.org/")
    require(required_packages,character.only = TRUE)
  }
  else
  {
    require(required_packages,character.only = TRUE)
  }
}

lapply(required_packages,load_required_packages )

# Import the dataset

AirBNB<-read.csv(file = "data/listings.csv",header = T,sep = ",",stringsAsFactors = F)
ZillowData<-read.csv("data/Zip_Zhvi_2bedroom.csv",header = T,sep = ",",stringsAsFactors = F)

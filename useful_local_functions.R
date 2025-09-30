fractional_year <- function(dates){
  
  #Convert dates to POSIXlt to extract year and day of the year
  dates_lt <- as.POSIXlt(dates)
  
  #Extract year and day of the year
  year <- dates_lt$year + 1900 # year is years since 1900
  day_of_year <- dates_lt$yday #day of year starts from 0
  
  #Calculate fractional year
  fractional_year <- year + (day_of_year/365.25)
  
  return(fractional_year)
}
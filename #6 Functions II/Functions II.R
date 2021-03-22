#Q1
vector_stats = function(x, y){
  if ( y == "length") {
    stats = len(x)
  }else if ( y == "mean") {
    stats = mean(x)
  }else if (y == "median"){
    stats = median(x)
  }else if (y == "sum"){
    stats = sum(x)
  }else {
    stats = "Sorry, this function doesn't exist."
  }
  if(is.na(stats)){
    stats = "Invalid."
  }
  return(stats)
}

x = 1:8
y = "sum"
vector_stats(x,y)

#Q2

library(Rlab)

Ford_sim = function(cars, profit, satis, iteration){
  results = c()
  p=1
  for( i in 1:iteration ){
    toss = rbern( 1, satis )
    while( toss ==1 & p<= (cars-1) ){
      p=p+1
      toss = rbern(1, satis)
    }
    results = c( results , p )
    p=1
  }
  
  profits = mean(results *profit) 
  return(profits)
}

cars = 5
profit = 2000
satis = .9
iteration = 2000
Ford_sim(cars, profit, satis, iteration)

#Q3
Feb_return = function(loc_start, loc_end ){
  Feb = c(1,1)
  if( loc_start >0 & loc_end >0 ){
    if( loc_start <=2 & loc_end <=2 ){
      Feb_final = Feb[ loc_start : loc_end ]
    } else if ( max( loc_start , loc_end )> 2 ){
      for( i in 3: max(loc_start , loc_end) ){
        Feb = c(Feb , Feb[i-1] + Feb[i-2] )
      }
      Feb_final = Feb[ loc_start : loc_end ]
    } else {Feb_final ="Invalid." }
  } else {Feb_final ="Invalid." } 
  return(Feb_final)
}
Feb_return(loc_start=3, loc_end =5)
  
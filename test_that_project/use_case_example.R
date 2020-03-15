##########################################################################################
#Title: Simple use case                                                                  #  
#Author: Heath Yates, PhD                                                                #
#Description:                                                                            # 
#                                                                                        # 
#References:                                                                             # 
# https://www.johndcook.com/blog/2013/06/12/example-of-unit-testing-r-code-with-testthat/#
##########################################################################################


calculate_discriminant <- function(a, b, c){
  #'THis function calculates the discriminant 
  #'@arg
  #'@return 
  
  
  result <- tryCatch(
    {
      
      if(a <= 0){
        stop("You cannot divide by zero")
        
      }else{
        
        d <- b^2 - 4*a*c
        
        
        if(d < 0){
          
          roots <- c()
          return(roots)
          
        }else if(d == 0){
          
          roots <- c(-b/(2*a))
          return(roots)
          
        }else{
          
          roots <- c(-b - sqrt(d)/(2*a), -b + sqrt(d)/(2*a))
          return(roots)
          
        }
        
        
        
      }
      
      
      
    }, error = function(e){
      
      #The error message goes here
      print("You cannot divide by zero")
    })
  
  
}

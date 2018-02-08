#' A Floyd Function
#'
#' This function allows you to solve network problems using floyd algorithm.
#' The function takes input in form of distance, for larger distance input veryhighvalue ~ 1000 times

floyd_custom_xlri <- function()

{

  library("Rfast")

  node <- readline(prompt="Enter the number of nodes: ")

  node <- as.numeric(node)

  mat <- matrix(, nrow = node, ncol = node)

  for(row in 1:node)
    {
      for(col in 1:node)
        {

        mat[row,col] <- readline(prompt=paste("Enter the value in row",row,"and column",col,": "))

        }
    }


  mat <- mapply(mat, FUN = as.numeric)

  mat <- matrix(data = mat, nrow = node, ncol = node)

  floyd(mat)

}

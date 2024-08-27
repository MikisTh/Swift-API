func fibonacci (n: Int) -> Int {

  if n == 0 {
    return 0
  } else if n == 1 {
    return 1
  }

  return fibonacci(n - 1) = fibonacci(n -2)
}

func fibonacciSeries(num: Int) -> Int{
   
   var n1 = 0
   var n2 = 1
   var nR = 0
  
   for _ in 0..<num{
      nR = n1 
      n1 = n2
      n2 = nR + n2
   }
   return n1
}

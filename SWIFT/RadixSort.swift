//algoritmo de classificação não comparativo

func radixSort(_ array: inout [Int]) {
    let max = getMax(array)
    
    var exp = 1
    while max / exp > 0 {
        countingSort(&array, exp: exp)
        exp *= 10
    }
}

func radixSort(_ array: inout [Int]) {
  let base = 10
  var digits = 1
  var isDone = false
  while !isDone {
    isDone = true
    var buckets = Array(repeating: [Int](), count: base)
    for element in array {
      let quotient = element / digits
      let digit = quotient % base
      buckets[digit].append(element)
      if quotient > 0 {
        isDone = false
      }
    }
    digits *= base
    array = buckets.flatMap { $0 }
  }
}

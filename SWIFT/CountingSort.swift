func countingSort(_ array: [Int]) {
  // Cria um array para armazenar a contagem de cada elemento
  let maxElement = array.max() ?? 0
  var countArray = [Int](repeating: 0, count: Int(maxElement + 1))
  
  for element in array {
    countArray[element] += 1
  }
  var z = 0
  var sortedArray = [Int](repeating: 0, count: array.count)

  for index in 1 ..< countArray.count {
    //exibe o elemento de índice o número de vezes necessárias
    while countArray[index] > 0 {
      sortedArray[z] = index
      z += 1
      countArray[index] -= 1
    }
  }
  
  print(sortedArray)
}

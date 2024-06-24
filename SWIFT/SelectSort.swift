
 
func selectionSortA(arr: [Int]) -> [Int] {

   // Creating a copy of original array
   var nArr = arr 
    
   // Selecting minimum element and 
   // then place it at the beginning of the array
   for x in 0..<nArr.count {
      var mIndex = x
      for y in x+1..<nArr.count {
         if nArr[y] < nArr[mIndex] {
            mIndex = y
         }
      }
      if mIndex != x {
         nArr.swapAt(x, mIndex)
      }
   }
   return nArr
}

let array = [9, 1, 8, 1, 3, 5, 10, 2, 8, 23, 6]
let resultantArr = selectionSortAlgo(arr: array)
print("Sorted array in ascending

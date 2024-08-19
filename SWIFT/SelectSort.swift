
 
func selectionSortA(arr: [Int]) -> [Int] {

   var nArr = arr 
    
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
print("Sorted array in ascending")

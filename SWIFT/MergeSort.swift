func mergeSort<T:Comparable>(_ array:[T])->[T] {
    
    guard array.count > 1 else {
        return array
    }
    let left = Array(array[0..<array.count/2])
    let right = Array(array[array.count/2..<array.count])
 
    return mergeArray(left: mergeSort(left), right: mergeSort(right))
}

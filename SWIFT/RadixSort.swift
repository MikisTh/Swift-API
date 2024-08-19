func radixSort(_ array: inout [Int]) {
    let max = getMax(array)
    
    var exp = 1
    while max / exp > 0 {
        countingSort(&array, exp: exp)
        exp *= 10
    }
}

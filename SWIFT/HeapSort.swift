func heapSort(_ array: inout [Int]) {
    let n = array.count

    for i in stride(from: n / 2 - 1, through: 0, by: -1) {
        heapify(&array, n, i)
    }

    for i in stride(from: n - 1, through: 0, by: -1) {
        array.swapAt(0, i)
        heapify(&array, i, 0)
    }
}

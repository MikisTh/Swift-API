func bubbleSort(_ arr: inout [Int]) {
    let n = arr.count

    for i in 0..<n {
        for j in 0..<n-i-1 {
            if arr[j] > arr[j+1] {
                let temp = arr[j]
                arr[j] = arr[j+1]
                arr[j+1] = temp
            }
        }
    }
}

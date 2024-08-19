function bucketSort(array, n) is
    buckets ← new array of n empty lists
    for i = 0 to (length(array)-1) do
        insert array[i] into buckets[msbits(array[i], k)]
    for i = 0 to n - 1 do
        nextSort(buckets[i]);
    return the concatenation of buckets[0], ...., buckets[n-1]

func bucketSort(_ array: [String]) -> [String] {
    let maxLength = array.map { $0.count }.max() ?? 0
    var buckets = Array(repeating: [String](), count: maxLength + 1)

    for element in array {
        let index = element.count
        buckets[index].append(element)
    }

    var sortedArray = [String]()
    for bucket in buckets {
        sortedArray += bucket.sorted()
    }

    return sortedArray
}

// Example usage
let unsortedStrings = ["apple", "banana", "orange", "kiwi", "grape"]
let sortedStrings = bucketSort(unsortedStrings)
print("Sorted Strings:", sortedStrings)

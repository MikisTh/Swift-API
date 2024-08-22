public func shellSort(_ list: inout [Int]) {
  var sublistCount = list.count / 2
  while sublistCount > 0 {
    for pos in 0..<sublistCount {
      insertionSort(&list, start: pos, gap: sublistCount)
    }
    sublistCount = sublistCount / 2
  }
}

func shellSort(array: inout [Int])
{
    for (int gapSize = array.length / 2; gapSize > 0; gapSize /= 2)
    {
        for (int currentIndex = gapSize; currentIndex < array.length; currentIndex++)
        {
            int currentIndexCopy = currentIndex;           
            int item = array[currentIndex];

            while (currentIndexCopy >= gapSize && array[currentIndexCopy - gapSize] > item)
            {
                array[currentIndexCopy] = array[currentIndexCopy - gapSize];
                currentIndexCopy -= gapSize;
            }

            array[currentIndexCopy] = item;
        }
    }
}

var array = [12, 11, 15, 10, 9, 1, 2, 3, 13, 14, 4, 5, 6, 7, 8]
shellsort(array: &array)
print(array)

public func shellSort(_ list : inout [Int]) {
    var sublistCount = list.count / 2

    while sublistCount > 0 {
        for var index in 0..<list.count {

            guard index + sublistCount < list.count else { break }

            if list[index] > list[index + sublistCount] {
                swap(&list[index], &list[index + sublistCount])
            }

            guard sublistCount == 1 && index > 0 else { continue }

            while index > 0 && list[index - 1] > list[index] {
                swap(&list[index - 1], &list[index])
                index -= 1
            }
        }
        sublistCount = sublistCount / 2
    }
}

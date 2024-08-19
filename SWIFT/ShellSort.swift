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

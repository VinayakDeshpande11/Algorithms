import Foundation

/**
    Steps: 
        1) Travese the array and find the min element
        2) Get the minIndex and check if it's not the same as the current index being checked
        3) Swap the current index's element with the minIndex's element
        
                             Best  Average  Worst
         Selection Sort 	Ω(n^2) 	Θ(n^2) 	O(n^2)

         This algorithm is in-place though but time complexity is O(n^2), which is ugly
*/

var arr = [9, 4, 32, 18, 23, 18, 61]

func main() {
    selectionSort()  
    print(arr)
      
}

func selectionSort() {
    for i in 0..<arr.count {
        let minIndex = findMinIndex(i, arr.count)
        if i != minIndex {
            swap(i, minIndex)
        }
    }
}

func findMinIndex(_ start: Int, _ end: Int) -> Int {
    var minIndex = start
    for i in start+1..<arr.count {
        if arr[i] < arr[minIndex] {
            minIndex = i
        }
    }
    return minIndex
}

func swap(_ start: Int, _ end: Int)  {
    let temp = arr[start]
    arr[start] = arr[end]
    arr[end] = temp
}

main()
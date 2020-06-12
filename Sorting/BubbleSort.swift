import Foundation
/**
 Steps:
    1) Starting with the first element(index = 0), compare the current element with the next element of the array.
    2) If the current element is greater than the next element of the array, swap them.
    3) If the current element is less than the next element, move to the next element.

    the loop keeps on reducing by n-i-1 as the last ith element is the ith largest element and
    sits in it place after every ith iteration
    Basically ith largest element always bubbles out in every iteration - so bubble sort

                    Best   Average  Worst
    Bubble Sort 	Ω(n) 	Θ(n^2) 	O(n^2)
    Worst time - Dont ever use
*/

var arr = [9, 18, 32, 50, 23, 18, 61]

func main() {
    bubbleSort()
    print(arr)
    
}

func bubbleSort() {
    let n = arr.count
    for i in 0..<n {
        var swapped = false
        for j in 0..<n-i-1 {
            if arr[j] > arr[j+1] {
                swap(j, j+1)
                swapped = true
            }
        }
        if !swapped {
            break
        }
    }
}

func swap(_ start: Int, _ end: Int) {
    let temp = arr[start]
    arr[start] = arr[end]
    arr[end] = temp
}

main()
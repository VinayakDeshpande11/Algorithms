import Foundation
/**
    Steps:
    1) Set last element as pivot
    2) traverse array and check if arr[i] <= pivot and maintain a pointer for previous smallest element
    3) increment i and swap once step 2 is true 
    4) return pivot index (pi)
    5) recurse quicksort on low -> pi - 1 and pi + 1 -> high

                   Best           Average       Worst
    Quick Sort 	Ω(n log(n)) 	Θ(n log(n)) 	O(n^2)

    Best thing -> in-place sorting and most gives average case and rarely worst case
*/

var arr = [9, 18, 32, 50, 23, 18, 61]

func main() {
    quickSort(0, arr.count-1)
    print(arr)
    
}

main()

func quickSort(_ low: Int, _ high: Int) {
    if low < high {
        let pi = partition(low, high)
        quickSort(low, pi-1)
        quickSort(pi+1, high)
    }
}

func partition(_ low: Int, _ high: Int) -> Int {
    let pivot = arr[high]
    var i = low - 1
    for j in low..<high {
        if arr[j] <= pivot {
            i += 1
            swap(i, j)
        }
    }
    swap(i+1, high)
    return i+1
}

func swap(_ start: Int, _ end: Int) {
    let temp = arr[start]
    arr[start] = arr[end]
    arr[end] = temp
}
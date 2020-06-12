import Foundation

/**
Steps:
 1) merge function take two intervals
 2) one from start to mid
 3) second from mid+1, to end
 4) and merge them in sorted order
                   Best           Average          Worst
 Merge Sort 	Ω(n log(n)) 	Θ(n log(n)) 	O(n log(n))

 One of the best sorting techniques but O(n) space complexity beats it over the quicksort which uses O(1)
*/



var arr = [9, 18, 32, 50, 23, 18, 61]

func main() {
    mergeSort(0, arr.count-1)
    print(arr)
    
}

// Arr is an array of integer type
// start and end are the starting and ending index of current interval of Arr

func mergeSort(_ start: Int, _ end: Int) {
    if start < end {
        let mid = (start+end) / 2
        mergeSort(start, mid)
        mergeSort(mid+1, end)
        merge(start, mid, end)
    }
}

func merge(_ start: Int, _ mid: Int, _ end: Int) {
    	// create a temp array
    var temp = Array<Int>(repeating: 0, count: end-start+1)
    
    	// crawlers for both intervals and for temp
    var i = start, j = mid+1, k = 0

    	// traverse both arrays and in each iteration add smaller of both elements in temp 
    while i <= mid && j <= end {
        if arr[i] <= arr[j] {
            temp[k] = arr[i]
            k+=1
            i+=1
        } else {
            temp[k] = arr[j]
            k+=1
            j+=1
        }
    }

    	// add elements left in the first interval 
        while i <= mid {
            temp[k] = arr[i]
            k+=1
            i+=1
        }

	// add elements left in the second interval 
        while j <= end {
            temp[k] = arr[j]
            k+=1
            j+=1
        }     
    
    	// copy temp to original interval
       for i in start...end {
            arr[i] = temp[i-start]
        }
}

main()
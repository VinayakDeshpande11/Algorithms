import Foundation

/**
    Steps:
        1) Traverse the array
        2) keep the current index's element in the value 
        3) traverse back and check whether the current index element in less than the previous value
           and swap the j with j+1
        4) Once all the elements are soted while loop ends, assign the (j+1)th index with value stored

                        Best   Average  Worst
        Insertion Sort 	Ω(n) 	Θ(n^2) 	O(n^2)

        Though it is in-place and has space complexity O(1), it is not good as it has n^2 time complexity
*/


var arr = [9, 4, 32, 50, 23, 18, 61]

func main() {
    insertionSort()
    print(arr)
    
}

func insertionSort() {
    for i in 0..<arr.count {
        let value = arr[i]
        var j = i-1
        while j >= 0 && arr[j] > value {
            arr[j+1] = arr[j]
            j-=1            
        }
        arr[j+1] = value
    }
}

main()
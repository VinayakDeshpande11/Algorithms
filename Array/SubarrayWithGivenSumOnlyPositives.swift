import Foundation
// SET - 1

// Given an unsorted array of nonnegative integers, find a continuous subarray which adds to a given number. 

// Input: arr[] = {1, 4, 20, 3, 10, 5}, sum = 33
// Ouptut: Sum found between indexes 2 and 4
// Sum of elements between indices
// 2 and 4 is 20 + 3 + 10 = 33

// Input: arr[] = {1, 4, 0, 0, 3, 10, 5}, sum = 7
// Ouptut: Sum found between indexes 1 and 4
// Sum of elements between indices
// 1 and 4 is 4 + 0 + 0 + 3 = 7

// Input: arr[] = {1, 4}, sum = 0
// Output: No subarray found
// There is no subarray with 0 sum




func findSubArray(_ arr: [Int], _ sum: Int) {
    var left = 0, right = 0
    
    guard  arr.count > 0 else { return }
    guard arr.count > 1 else {
        if arr[0] == sum {
            print("\(left) \(right)")
        }
        return
    }
    var currSum = arr[0]
    for i in 1...arr.count {
        if currSum < sum {
            currSum += arr[i]
            right+=1
        } else if currSum == sum {
            print("\(left) \(right)")
            return
        } else {
            while currSum > sum && left < right - 1 {
                currSum -= arr[left]
                left += 1
            }
        }
        
    }
    print("No Subarrays found")
}

func main() {
    findSubArray([1, 4, 20, 3, 10, 5], 33)
}

main()
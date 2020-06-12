import Foundation

/**
1 3 4 5 
3 4 5 2
4 5 3 6
*/


func main() {
    print(traverseArrayVertical(array: [[1, 3, 4, 5], [3, 4, 5, 2], [4, 5, 3, 6]]))    
}

func traverseArrayVertical(array: [[Int]]) -> [Int] {
    guard array.count > 0 else {
        return []
    }
    var top = 0, left = 0, bottom = array.count-1, right = array.first!.count-1
    var arr = [Int]()
    
    while left <= right {
        for i in top...bottom {
            arr.append(array[i][left])
        }
        left+=1
    }
    return arr
}

main()




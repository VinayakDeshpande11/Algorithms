import Foundation

/**
1 3 4 5 
3 4 5 2
4 5 3 6
*/

func ArrayTraversalVerticalHairPin(array: [[Int]]) -> [Int] {
    var top = 0, bottom = array.count-1, left = 0, right = array.first!.count-1
    var dir = 0
    var arr = [Int]()
    while left <= right {
        if dir == 0 {
            for i in top...bottom {
                arr.append(array[i][left])
            }
            left+=1
        } else if dir == 1 {
            for i in (top...bottom).reversed() {
                arr.append(array[i][left])
            }
            left+=1
        }
        dir = (dir+1)%2
    }
    return arr
    
}

func main() {
    // print(ArrayTraversalVerticalHairPin(array: [[1, 3, 4, 5], [3, 4, 5, 2], [4, 5, 3, 6]]))
    print(ArrayTraversalVerticalHairPin(array: [[]]))
    
}

main()
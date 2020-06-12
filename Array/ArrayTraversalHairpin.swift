import Foundation

/**
1 3 4 5 
3 4 5 2
4 5 3 6
*/

func traverseArrayHairPin(array:[[Int]]) -> [Int] {
    var top = 0, left = 0, right = array.first!.count-1, bottom = array.count
    var dir = 0
    var arr: [Int] = []
    if array.count == 0 {return []}
    while (top < bottom) {
        if dir == 0 {
            guard left < right else {
                return []
            }    
            for i in left...right {
                arr.append(array[top][i])
                
            }
            top += 1
        } else if dir == 1 {
            guard left < right else {
                return []
            }
            for i in (left...right).reversed() {
                arr.append(array[top][i])
            }
            top += 1
        }
        dir = (dir+1)%2
        
    }
    return arr
}


func main() {
    print(traverseArrayHairPin(array: [[]]))
}

main()
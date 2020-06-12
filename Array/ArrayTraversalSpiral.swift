import Foundation

/**
1 3 4 5 
3 4 5 2
4 5 3 6
*/

func traverseArraySpiral(A:[[Int]]) -> [Int] {
     var T = 0, B = A.count-1, L = 0, R = A.first!.count-1
        var arr: [Int] = []
        var dir = 0
        while L <= R && T <= B {
        if dir == 0 {
        guard L < R else {return []}
            for i in L...R {
              arr.append(A[T][i])
            }
            T+=1
        } else if dir == 1 {
         guard T < B else {return []}
            for i in T...B {
             arr.append(A[i][R])
            }
            R-=1
        } else if dir == 2 {
          guard L < R else {return []}
           for i in (L...R).reversed() {
             arr.append(A[B][i])
           }
            B-=1
        } else if dir == 3 {
         guard T < B else {return []}
            for i in (T...B).reversed() {
             arr.append(A[i][L])
            }
            L+=1
        }
        dir = (dir+1)%4
        }
        return arr
}


func main() {
    print(traverseArraySpiral(A: [[]]))
}

main()
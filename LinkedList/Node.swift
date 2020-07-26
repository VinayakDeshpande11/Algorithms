import Foundation

public class Node<T> {
    var value: T
    var next: Node<T>?
    weak var previous: Node<T>?
    
    init(_ value: T) {
        self.value = value
    }
}
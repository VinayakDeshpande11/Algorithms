import Foundation

public class LinkedList<T> {
    fileprivate var head: Node<T>?
    private var tail: Node<T>?

    public var isEmpty: Bool {
        return head == nil
    }
    
    public var first: Node<T>? {
        return head
    }

    public var last: Node<T>? {
        return tail
    }
}
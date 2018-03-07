//: Playground - noun: a place where people can play
// Queue :- A QUEUE is a list where you can only insert  new items at the back and remove items from the front   .It ensures that the fitrst item you enqueue is also the first  item to dequeue. A queue gives us FIFO (First come first servise)

import UIKit

public  struct Queue<T> {
fileprivate  var array = [T]()
    
    public var isempty: Bool {
        return array.isEmpty
    }
    public var front: T? {
        return array.first
    }
    public var count: Int {
        return array.count
    }
    public mutating func enequeue(_ element: T){
        array.append(element)
    }
    
    public mutating func dequeue()-> T?{
        if isempty{
            return nil
        }
        else {
            return array.removeFirst()
        }
    }
    
}
var queue = Queue<String>()
queue.enequeue("shakti")
queue.enequeue("Horse")
queue.enequeue("chandan")
print(queue)
queue.count
queue.dequeue()
queue.dequeue()
queue.dequeue()
queue.dequeue()
queue.dequeue()
print(queue)

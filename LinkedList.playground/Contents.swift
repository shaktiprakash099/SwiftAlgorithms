//: Playground - noun: a place where people can play

/*A  Linked list is a sequence of data items .where each item is reffered as a node
 There are two types of linked list
 in Singlelinked list each node only has a reference to next node ,but in double linked lists
 each node has a reference tiothe previous and next node
 
 */

import UIKit
public class Node<T>{
    var value: T
    var next : Node<T>?
    weak var previous : Node<T>?
    init(value : T) {
        self.value = value
    }
}


public class LinkedList <T> {
    
    fileprivate var head : Node <T>?
    private var tail :Node<T>?
    public var isEmpty : Bool {
        return head == nil
    }
    public var first: Node<T>?{
        return head
    }
    public var last : Node<T>?{
        return tail
    }
    public func append(value: T){
        
        
        let newnode = Node(value: value)   //
        
        if let tailNode = tail {
            newnode.previous = tailNode
            tailNode.next = newnode
        }
        else{
            head = newnode
        }
        
        tail = newnode
    }
    public func nodeAT(index : Int) -> Node<T>?{
        
        if index >= 0 {
            var node = head
            var i  =  index
            while node != nil {
                if i == 0 {return node}
                 i -= 1
                node = node!.next
            }
            
        }
        return nil
    }
    public func removeAll(){
        head = nil
        tail = nil
    }
    public func remove(node : Node<T>) -> T {
        print("node to be removed \n \(node.value)")
        let prev = node.previous
        print(head?.value ?? "")
        print(tail?.value ?? "")
        print ("The prev value")
        print(prev?.value ?? "previous value not available  as its the first node")
        let next = node.next
          print ("The next value")
         print(next?.value ?? "next value is not available as its the last node")
        if let prev = prev{
            prev.next = next
            print("previousvalue is there and next  \(String(describing: next?.value))")
            print(prev.value)
        }
        else{
            head = next
            print("now head becomes  \(String(describing: head?.value))")
        }
        next?.previous = prev
        if next == nil {
            tail = prev
            print("tail is \(String(describing: tail?.value))")
        }
        print(node.value)
        node.previous = nil
        node.next = nil
        return node.value
        
    }
    
}


extension LinkedList: CustomStringConvertible {
    public var description: String {
        var text = "["
        var node = head
        while node != nil {
            text  = text + "\(node!.value)"
            node = node!.next
            if node != nil {text += ", "}
        }
        return text + "]"
    }
}
var linkedlist = LinkedList<String>()
linkedlist.append(value:  "shakti")
linkedlist.append(value: "prakash")
linkedlist.append(value: "janvi")
linkedlist.append(value: "tamananna")
print(linkedlist)
linkedlist.remove(node:linkedlist.nodeAT(index: 0)!)
print(linkedlist)


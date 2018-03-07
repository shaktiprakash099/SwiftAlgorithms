//: A UIKit based Playground for presenting user interface
// : Stacks are like arrays, but with limited functionality. You can only push to add a new element to the top of the stack, pop to remove the element from the top, and peek at the top element without popping it off.

//:Why would you want to do this? Well, in many algorithms, you want to add objects to a temporary list at some point and then pull them off this list again at a later time. Often, the order in which you add and remove these objects matter.

//:A stack gives you a LIFO or last-in first-out order. The element you pushed last is the first one to come off with the next pop. (A very similar data structure, the queue is FIFO, or first-in first-out.)

//: fileprivate :- fileprivate is one of the new Swift 3 access modifiers that replaces private in its meaning. fileprivate defines an entity (class, extension, property, ...) as private to everybody outside the source file it is declared in, but accessible to all entities in that source file

//: private :- restricts the entity in the direct enclosing scope.
// mutating :- Declaring function as mutating inside Struct allows us to alter properties in
// append function :- Appending Adds the elements of a sequence to the end of the array
//: popLast :- Delete the last element from an array and returns the last element
//:last:-  returns the last element of the aray

import UIKit
import Foundation
struct stack<Element> {

    fileprivate var array:[Element] = []
    mutating func push(_ element: Element) {
        array.append(element)
    }
    mutating func pop() -> Element?{
        return   array.popLast()
    }
    func peek()->Element?{
        return array.last
    }
}



var bookStack = stack<Int>()
bookStack.push(1)
bookStack.push(2)
bookStack.peek()
bookStack.pop()
bookStack.peek()
print(bookStack)


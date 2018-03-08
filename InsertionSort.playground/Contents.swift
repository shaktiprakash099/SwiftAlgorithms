//: Playground - noun: a place where people can play


import Foundation
import UIKit
var str = "Hello, playground"
print("\(str)")

func measure(_ title: String, block: (() -> ()) -> ()) {
    
    let startTime = CFAbsoluteTimeGetCurrent()
    
    block {
        let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
        print("\(title):: Time: \(timeElapsed)")
    }
}


func insertionsortWithoutusingSwapAT(_ array :[Int])-> [Int]{
    var sortedarray = array
    for x in 1 ..< sortedarray.count{
        var y = x
       
        while y > 0 && sortedarray[y] < sortedarray[y-1] {
             let temp = sortedarray[y]
            sortedarray[y] = sortedarray[y-1]
             sortedarray[y-1] = temp
            y -= 1
        }
    }
    return sortedarray
    
}

func insertionSortusingSwapAT(_ array: [Int]) -> [Int] {
    var a = array             // 1
    for x in 1..<a.count {         // 2
        var y = x
        while y > 0 && a[y] < a[y - 1] { // 3
            a.swapAt(y - 1, y)
            y -= 1
        }
    }
    return a
}
measure("Execution time without using SwapAt") { (finish) in
    let lists = [0,0,0,8,3,5,1,11,7,9,-1,0]
    _ = insertionsortWithoutusingSwapAT(lists)
    finish()
}

measure("Execution time by using SwapAt") { (finish) in
    let lists = [0,0,0,8,3,5,1,11,7,9,-1,0]
    _ = insertionSortusingSwapAT(lists)
    finish()
}

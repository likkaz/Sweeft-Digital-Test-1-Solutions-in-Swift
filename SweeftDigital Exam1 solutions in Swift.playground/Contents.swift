import UIKit
// Task N1
func isPalindrome(text:String) -> Bool {
    let reversedText = String(text.reversed())
    if(text != "" && text == reversedText) {
        return true
    } else {
        return false
    }
}
print("Task1")
print(isPalindrome(text:"refer"))
print("-----------")


// Task N2
func minSplit(amount:Int)->[Int]{
    let values = [1,5,10,20,50]
    var newArr = [Int]()
    var amount = amount
    
    for i in stride(from: values.count-1, to: -1, by: -1) {
    
        while amount >= values[i]{
            amount -= values[i]
            newArr.append(values[i])
        }
}
    return newArr
}
print("Task2")
print(minSplit(amount: 60))
print("-----------")


// Task N3
func notContains(_ array :  [Int]) -> Int {
    var check = [Int: Bool]()
    for i in array{
        check[i] = true
    }

    var i = 1
    while true {
        if check[i] == nil {
            return i
        } else {
            i += 1
        }
    }
}
print("Task3")
print(notContains([-2,1,2,12,5]))
print("-----------")

// 4. Balanced
func isProperly(string: String) -> Bool {
    let parenthesis: [Character: Character] = ["(": ")"]
    var newArr: [Character] = []
    for char in string {
        if let match = parenthesis[char] {
            newArr.append(match)
        } else if newArr.last == char {
            newArr.popLast()
        } else {
            return false
        }
    }
    return newArr.isEmpty
}
print("Task4")
print(isProperly(string: "((()())"))
print("-----------")


// Task N5 by Fibonacci approach
struct CountingStairs {
  private func fib(stairsCount: Int)-> Int {
    if (stairsCount <= 1){
      return stairsCount
    }else {
      return (fib(stairsCount: stairsCount - 1) + fib(stairsCount: stairsCount - 2))
    }
  }
  func countVariants(stairs: Int)-> Int {
    return fib(stairsCount: stairs + 1)
  }
}
let stairTask = CountingStairs()
print("Task5")
print(stairTask.countVariants(stairs: 4))
print("-----------")


//Task N6
struct MyStruct {
private var myArray: [String] = []
mutating func push(_ element: String) {
    myArray.append(element)
}
mutating func remove() -> String? {
    return myArray.popLast()
}
func search() -> String {
    guard let topElement = myArray.last else {return "This stack is empty."}
    return topElement
}
}
print("Task6")
var metal = MyStruct()
metal.search()
metal.push("Iron Maiden")
metal.push("Judas Priest")
metal.push("Motorhead")
metal.push("Wardruna")
metal.push("Sabaton")
print(metal)
metal.search()
metal.remove()
metal.search()
metal.remove()
print(metal)

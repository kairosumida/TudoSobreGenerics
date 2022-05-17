//
//  TheSwiftProgrammingLanguage.swift
//  TudoSobreGenerics
//
//  Created by Kairo Sumida on 17/05/22.
//

import SwiftUI
//site: https://docs.swift.org/swift-book/LanguageGuide/Generics.html
struct TheSwiftProgrammingLanguage: View {
    var body: some View {
        ZStack{
            VStack{
                Text(executar1())
                Spacer()
                Text(executar2())
                Spacer()
                Text(executar3())
            }
        }
    }
}

struct Stack<T>{
    var items: [T] = []
    mutating func push(_ item: T){
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
}
extension Stack{
    var topItem: T? {
        return items.isEmpty ? nil : items[items.count - 1]
    }
}
func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

struct TheSwiftProgrammingLanguage_Previews: PreviewProvider {
    static var previews: some View {
        TheSwiftProgrammingLanguage()
    }
}

protocol Container{
    associatedtype T: Equatable
    mutating func append(_ item: T)
    var count: Int { get }
    subscript(i: Int) -> T { get }
}
struct IntStack<T: Equatable>: Container{
    var items: [T] = []
    mutating func push(_ item: T){
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
    mutating func append(_ item: T) {
        self.push(item)
    }
    var count: Int{
        return items.count
    }
    subscript(i: Int) -> T {
        return items[i]
    }
}
func executar3() -> String{
    var stacks = IntStack<String>()
    stacks.push("abc")
    stacks.push("cde")
    return stacks[1]
}
func executar2() -> String{
    var stackOfString = Stack<String>()
    stackOfString.push("uno")
    stackOfString.push("dos")
    stackOfString.push("tres")
    stackOfString.push("cuatro")
    let fromTheTop = stackOfString.pop()
    if let topItem = stackOfString.topItem{
        return topItem
    }
    return fromTheTop
}
func executar1() -> String{
    var valor1: Int = 5
    var valor2: Int = 9
    swapTwoValues(&valor1, &valor2)
    var string1: String = "hello"
    var string2: String = "world"
    swapTwoValues(&string1, &string2)
    return "valor1: \(valor1) valor2: \(valor2)\n string1: \(string1) string2: \(string2)"
}

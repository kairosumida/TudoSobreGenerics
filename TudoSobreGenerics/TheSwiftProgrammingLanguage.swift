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
                Text(executa1r())
            }
        }
    }
}
func executa1r() -> String{
    var t = Informationt(data: "sss")
    return String(t.getCalcula())
}
protocol Container {
    associatedtype T
    mutating func append(_ item: T)
    var count: Int { get }
    subscript(i: Int) -> T { get }
    associatedtype C: IteratorProtocol where C.Element == T
    func makeIterator() -> C
}

protocol ComparableContainer: Container where T: Comparable{}

extension Container{
    subscript<Indices: Sequence>(indices: Indices) -> [T]
    where Indices.Iterator.Element == Int{
    var result: [T] = []
    for index in indices {
        result.append(self[index])
    }
    return result
    }
}
struct Informationt<T>{
    
    var data: T
    init (data: T){
        self.data = data
    }
    func getData() -> T where T == Int{
        return self.data
    }
}
extension Informationt where T == Int{
    func getCalcula() -> String {
        return String("é uma Int")
    }
}
extension Informationt where T == String{
    func getCalcula() -> String {
        return String("é uma String")
    }
}

extension Container {
    func average() -> Double where T == Int {
        var sum = 0.0
        
        for index in 0..<count {
            sum += Double(self[index])
        }
        return sum / Double(count)
    }
    func endsWith(_ item: T) -> Bool where T: Equatable {
        return count >= 1 && self[count-1] == item
    }
}
struct TheSwiftProgrammingLanguage_Previews: PreviewProvider {
    static var previews: some View {
        TheSwiftProgrammingLanguage()
    }
}

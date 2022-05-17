//
//  Programiz.swift
//  TudoSobreGenerics
//
//  Created by Kairo Sumida on 17/05/22.
//

import SwiftUI
//site https://www.programiz.com/swift-programming/generics
struct Programiz: View {
    var body: some View {
        ZStack{
            VStack{
                Text("Função genérica")
                Text(displayData(data: /*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/))
                Text(String(displayData(data: 5)))
                Spacer()
                Text("Classe genérica")
                Text(String(Information<Int>(data: 6).getData()))
                Text(Information<String>(data: "Swift").getData())
                Spacer()
                Text("Tipo restritos com genéricos")
                Text(String(addition(num1: 10, num2: 10)))
            }
        }
    }
    
    func displayData<T>(data: T) -> T{
        return data
    }
}
func addition<T: Numeric>(num1: T, num2: T) -> T{
    return num1 + num2
}
class Information<T>{
    
    var data: T
    init (data: T){
        self.data = data
    }
    func getData() -> T{
        return self.data
    }
}
struct Programiz_Previews: PreviewProvider {
    static var previews: some View {
        Programiz()
    }
}

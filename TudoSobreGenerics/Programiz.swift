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
                Text(displayData(data: /*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/))
                Text(String(displayData(data: 5)))
                
            }
        }
        
    }
    
    func displayData<T>(data: T) -> T{
        return data
    }
    
}

struct Programiz_Previews: PreviewProvider {
    static var previews: some View {
        Programiz()
    }
}

//
//  ContentView.swift
//  ejemplo de lazy stack
//
//  Created by Antonio Carabantes on 02/11/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ScrollView{
            LazyVStack{
                ForEach(1...1000, id: \.self) { value  in
                    debug(value: value)
                    Text("Row \(value)")
                }
            }
        }
        
    }
    
    func debug(value: Int) -> some View {
        print("\(value)")
        return EmptyView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

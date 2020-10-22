//
//  Home.swift
//  Ejemplo tabView
//
//  Created by Antonio Carabantes on 22/10/2020.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView{
        List{
            Text("Fila 1")
            Text("Fila 2")
            Text("Fila 3")
            Text("Fila 4")
            Text("Fila 5")
            Text("Fila 6")
            Text("Fila 7")
        }.navigationTitle("Title")
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

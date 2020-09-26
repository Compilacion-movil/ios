//
//  ContentView.swift
//  ejemplo ColorPicker
//
//  Created by Antonio Carabantes on 26/09/2020.
//  Copyright © 2020 antocara. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var selectedColor = Color.black
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Color Picker").foregroundColor(selectedColor).font(.largeTitle)
            ColorPicker(
                "Seleccione un color",
                selection: $selectedColor,
                supportsOpacity: true
            ).frame(width: 150, height: 150)
            Spacer()
        }.padding(.vertical, 70)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

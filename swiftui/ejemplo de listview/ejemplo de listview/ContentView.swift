//
//  ContentView.swift
//  ejemplo de listview
//
//  Created by Antonio Carabantes on 04/07/2020.
//  Copyright © 2020 compilacionmovil. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let dataSource = [
        Weather(image: "sun.max", temperature: 28, city: "Marbella"),
        Weather(image: "sun.max", temperature: 25, city: "Coin"),
        Weather(image: "sun.min", temperature: 21, city: "Barcelona"),
        Weather(image: "cloud.fog", temperature: 14, city: "Londres"),
        Weather(image: "cloud.heavyrain", temperature: 12, city: "Berlín"),
        Weather(image: "cloud.snow", temperature: -3, city: "Oslo")
    ]
    
    
    var body: some View {
        NavigationView{
            List(dataSource){ weather in
                HStack{
                    Image(systemName: weather.image)
                        .frame(width: 50, height: 50, alignment: .center)
                    Text(weather.city).frame(width: 200)
                    Text("\(weather.temperature)º")
                        .frame(width: 50, height: 50, alignment: .trailing)
                }
            }.navigationBarTitle("The Weather")
        }
   
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





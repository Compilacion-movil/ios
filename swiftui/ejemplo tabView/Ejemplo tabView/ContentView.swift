//
//  ContentView.swift
//  Ejemplo tabView
//
//  Created by Antonio Carabantes on 22/10/2020.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        setupTabBar()
    }
    
    var body: some View {
        
        TabView{
            Home()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            Text("Settings")
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }.accentColor(Color.red)
    }
}

extension ContentView {
  func setupTabBar() {
    UITabBar.appearance().barTintColor = .orange
    UITabBar.appearance().unselectedItemTintColor = UIColor.green
  
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

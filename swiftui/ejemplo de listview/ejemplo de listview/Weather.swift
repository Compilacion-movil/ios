//
//  Weather.swift
//  ejemplo de listview
//
//  Created by Antonio Carabantes on 04/07/2020.
//  Copyright © 2020 compilacionmovil. All rights reserved.
//

import Foundation


struct Weather: Identifiable {
    var id = UUID()
    var image: String
    var temperature: Int
    var city: String
}

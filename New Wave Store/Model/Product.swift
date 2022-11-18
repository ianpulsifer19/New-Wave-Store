//
//  Product.swift
//  New Wave Store
//
//  Created by Ian Pulsifer (student LM) on 11/18/22.
//

import Foundation
class Product: ObservableObject{
    @Published var name: String
    @Published var description: String
    @Published var picture: String
    @Published var quantity: Int
    @Published var price: Double
    
    init(name: String = "nwPC", description: String = "computer", picture: String = "NW-PC", quantity: Int = 100, price: Double = 100.0){
        self.name = name
        self.description = description
        self.picture = picture
        self.quantity = quantity
        self.price = price
    }
}

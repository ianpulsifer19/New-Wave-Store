//
//  Product.swift
//  New Wave Store
//
//  Created by Ian Pulsifer (student LM) on 11/18/22.
//

import Foundation
class Product: ObservableObject, Identifiable, Equatable{
    static func == (lhs: Product, rhs: Product) -> Bool {
        lhs.name == rhs.name
    }

    
    @Published var name: String
    @Published var description: String
    @Published var picture: String
    @Published var quantity: Int
    @Published var price: Double
    let id: UUID = UUID()
    
    init(name: String = "NW-PC", description: String = "computer", picture: String = "NW-PC", quantity: Int = 100, price: Double = 100.0){
        self.name = name
        self.description = description
        self.picture = picture
        self.quantity = quantity
        self.price = price
    }
}

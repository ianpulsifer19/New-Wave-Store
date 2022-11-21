//
//  ProductList.swift
//  New Wave Store
//
//  Created by Ian Pulsifer (student LM) on 11/18/22.
//

import Foundation
class ProductList: ObservableObject{
    @Published var products: [Product]
    
    init(){
        products = [Product(), Product(name: "nwPhone", description: "", picture: "wPhone", quantity: 3000, price: 999.99), Product(name: "wPen", description: "", picture: "wPen", quantity: 300, price: 40.00), Product(name: "Software", description: "", picture: "software", quantity: 250, price: 150.00)]
        }
    
}

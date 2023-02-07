//
//  Cart.swift
//  New Wave Store
//
//  Created by Ian Pulsifer (student LM) on 12/1/22.
//

import Foundation   
import SwiftUI

class Cart: ObservableObject{
    @Published var products: ProductList = ProductList(products: [])
    @Published var id: UUID = UUID()
    var total: Double {
        var cost: Double = 0.0
        for product in products.products{
            cost = cost + product.price*Double(product.quantity)
        }
        return cost
    }
    
    func addProduct(_ product: Product){
        var found: Bool = false
        for p in products.products{
            if p == product{
                found = true
                p.quantity+=1
            }
        }
        if  !found{
            products.products.append(product)
        }
            id = UUID()
    }
}

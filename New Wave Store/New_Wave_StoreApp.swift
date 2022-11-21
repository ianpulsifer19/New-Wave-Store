//
//  New_Wave_StoreApp.swift
//  New Wave Store
//
//  Created by Ian Pulsifer (student LM) on 11/18/22.
//

import SwiftUI

@main
struct New_Wave_StoreApp: App {
    
    @StateObject var productList: ProductList = ProductList()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(productList)
        }
    }
}

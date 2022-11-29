//
//  ContentView.swift
//  New Wave Store
//
//  Created by Ian Pulsifer (student LM) on 11/18/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var products: ProductList
    @State var viewState: ViewState = .list
    @State var index: Int = 0
    
    var body: some View {
        if viewState == .list{
            HomeView(viewState: $viewState, index: $index)
        }else{
            ProductDetailView(product: $products.products[index], viewState: $viewState)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ProductList())
    }
}

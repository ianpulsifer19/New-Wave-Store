//
//  HomeView.swift
//  New Wave Store
//
//  Created by Ian Pulsifer (student LM) on 11/23/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var products: ProductList
    var body: some View {
        ScrollView{
            ForEach($products.products.indices){
                index in
                ProductListView(product: $products.products[index])
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(ProductList())
    }
}

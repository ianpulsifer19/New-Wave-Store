//
//  HomeView.swift
//  New Wave Store
//
//  Created by Ian Pulsifer (student LM) on 11/23/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var products: ProductList
    @Binding var viewState: ViewState
    @Binding var index: Int
    
    var body: some View {
        ScrollView{
            ForEach($products.products.indices){
                index in
                ProductListView(product: $products.products[index]).onTapGesture {
                    self.index = index
                    viewState = .detail
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewState: Binding.constant(.list), index: Binding.constant(0)).environmentObject(ProductList())
    }
}

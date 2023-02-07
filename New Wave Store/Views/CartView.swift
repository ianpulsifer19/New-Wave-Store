//
//  CartView.swift
//  New Wave Store
//
//  Created by Ian Pulsifer (student LM) on 12/1/22.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cart: Cart
    
    var body: some View {
        VStack {
            ScrollView{
                ForEach($cart.products.products){
                    product in
                    CartItemView(product: product)
                }
            }
            HStack{
                Text("**Total**").font(Constants.textFont).padding(.horizontal)
                Spacer()
                Text(String(format: "$%.2f" ,cart.total)).font(Constants.textFont).foregroundColor(Color.highlight).padding(.trailing)
            }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView().environmentObject(Cart())
    }
}

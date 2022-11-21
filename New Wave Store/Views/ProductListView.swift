//
//  ProductListView.swift
//  New Wave Store
//
//  Created by Ian Pulsifer (student LM) on 11/21/22.
//

import SwiftUI

struct ProductListView: View {
    @Binding var product: Product
    var body: some View {
        HStack{
            Image(product.picture).resizable().frame(width: 100, height: 100).padding()
            VStack {
                Text(product.name).font(Constants.textFont).padding(.bottom)
                Text(String(format: "$%.2f" ,product.price)).font(Constants.textFont).foregroundColor(Color.highlight)
            }
            Spacer()
        }
    }
}

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView(product: Binding.constant(Product()))
    }
}

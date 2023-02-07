//
//  CartItemView.swift
//  New Wave Store
//
//  Created by Ian Pulsifer (student LM) on 12/1/22.
//

import SwiftUI

struct CartItemView: View {
    @Binding var product: Product
    var body: some View {
        HStack{
            Image(product.picture).resizable().frame(width: 100, height: 100).padding()
            VStack {
                Text(product.name).font(Constants.textFont).padding(.bottom, 5)
                
                HStack{
                Text("Quantity: ").font(Constants.textFont)
                
                Picker("Quantity: ", selection: $product.quantity){
                    ForEach(0..<100){
                        number in Text("\(number)")
                        
                    }
                }.accentColor(Color.highlight)
                }
            }
            Spacer()
            Text(String(format: "$%.2f" ,product.price*Double(product.quantity))).font(Constants.textFont).foregroundColor(Color.highlight).padding(.trailing)
        }
    }
}

struct CartItemView_Previews: PreviewProvider {
    static var previews: some View {
        CartItemView(product: Binding.constant(Product()))
    }
}

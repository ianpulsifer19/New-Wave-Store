//
//  ProductDetailView.swift
//  New Wave Store
//
//  Created by Ian Pulsifer (student LM) on 11/28/22.
//

import SwiftUI

struct ProductDetailView: View {
    @Binding var product: Product
    @Binding var viewState: ViewState
    
    var body: some View {
        VStack(alignment: .leading){
            Button{
                viewState = .list
            }label:{
                Text("Back")
            }.padding().foregroundColor(Color.highlight)
            Image(product.picture).resizable().aspectRatio(contentMode: .fit).padding()
            Text("**\(product.name)**").font(Constants.textFont).padding([.leading, .bottom])
            Text(product.description).font(Constants.textFont).padding([.leading, .bottom])
            Text(String(format: "$%.2f" ,product.price)).font(Constants.textFont).foregroundColor(Color.highlight).padding([.leading, .bottom])
            Text("Quantity Available: \(product.quantity)").font(Constants.textFont).padding([.leading, .bottom])
            Spacer()
            Button{}label: {
                ZStack{
                    Rectangle().foregroundColor(Color.highlight).cornerRadius(10).padding().frame(height: 85)
                    Text("Add to Cart").font(Constants.textFont).foregroundColor(Color.black)
                }
            }
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: Binding.constant(Product()), viewState: Binding.constant(.list))
    }
}

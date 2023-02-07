//
//  ContentView.swift
//  New Wave Store
//
//  Created by Ian Pulsifer (student LM) on 11/18/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var products: ProductList
    @EnvironmentObject var userInfo: UserInfo
    @State var viewState: ViewState = .authenticate
    @State var index: Int = 0
    
    var body: some View {
        
        if viewState == .authenticate && !userInfo.loggedIn{
                AuthenticationView(viewState: $viewState)
            }
        else if viewState == .login && !userInfo.loggedIn{
                    LogInView(viewState: $viewState)
                }
        else if viewState == .signup && !userInfo.loggedIn{
                    SignUpView(viewState: $viewState)
                }
        else if viewState == .forgotpassword && !userInfo.loggedIn{
                    ForgotPasswordView(viewState: $viewState)
                }
        else{
        TabView{
        if viewState == .detail{
            ProductDetailView(product: $products.products[index], viewState: $viewState).tabItem{
                Image(systemName: "house")
                Text("House")
            }
            
        }
            else{
                HomeView(viewState: $viewState, index: $index).tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
                
            }
            CartView().tabItem{
                Image(systemName: "cart")
                Text("Cart")
            }
            SettingsView(viewState: $viewState).tabItem{
            Image(systemName: "gear")
            Text("Settings")
        }
        }}
       
           
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ProductList()).environmentObject(Cart())
    }
}


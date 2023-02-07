//
//  New_Wave_StoreApp.swift
//  New Wave Store
//
//  Created by Ian Pulsifer (student LM) on 11/18/22.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct New_Wave_StoreApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    @StateObject var productList: ProductList = ProductList()
    @StateObject var cart: Cart = Cart()
    @StateObject var userInfo: UserInfo = UserInfo()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(productList)
                .environmentObject(cart)
                .environmentObject(userInfo)
        }
    }
}

//
//  SettingsView.swift
//  New Wave Store
//
//  Created by Ian Pulsifer (student LM) on 2/7/23.
//

import SwiftUI
import FirebaseAuth
import FirebaseStorage

struct SettingsView: View {
    
    @EnvironmentObject var userInfo: UserInfo
    @Binding var viewState: ViewState
    @State var showSheet: Bool = false
    
    var body: some View {
        VStack{
            
            Spacer()
            Image(uiImage: userInfo.image).resizable().aspectRatio(contentMode: .fill).frame(width: 200, height: 200, alignment: .center).clipShape(Circle())
            
            Button{
                showSheet.toggle()
            } label: {
                Text("Change Picture").frame(width: 220, height: 50, alignment: .center).font(Constants.buttonFont)
            }.background(Color.white).cornerRadius(200)
            Spacer()
            
            Button{
                try! Auth.auth().signOut()
                userInfo.username = ""
                userInfo.password = ""
                userInfo.loggedIn = false
                viewState = .authenticate
            } label:{
                Text("Sign Out").frame(width: 220, height: 50, alignment: .center).font(Constants.buttonFont)
            }.background(Color.white).cornerRadius(200)
        }.sheet(isPresented: $showSheet) {
            guard let uid = Auth.auth().currentUser?.uid else{return}
            
            let storage = Storage.storage().reference().child("users/\(uid)")
            
            guard let imageData = userInfo.image.jpegData(compressionQuality: 0.5) else {return}
            
            storage.putData(imageData) { meta, error in
                
            }
        } content: {
            ImagePicker(selectedImage: self.$userInfo.image)
        }

    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(viewState: Binding.constant(.detail))
    }
}

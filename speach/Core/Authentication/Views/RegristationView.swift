//
//  RegristationView.swift
//  speach
//
//  Created by Aulia Octaviani on 23/05/24.
//

import SwiftUI

struct RegristationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            Text(" disini ikonnya")
            
            VStack{
                TextField( " Enter yaour Email", text : $email)
                    .modifier(SpeachTextFieldModifier())
                SecureField("Enter yaour Password", text : $password)
                    .modifier(SpeachTextFieldModifier())
                TextField( " Enter yaour full name", text : $fullname)
                    .modifier(SpeachTextFieldModifier())
                TextField( " Enter yaour username", text : $username)
                    .modifier(SpeachTextFieldModifier())
            }
            Button{
                dismiss()
            } label:{
                Text("Sign Up")
                    .modifier(ButtonSpeachModifier())
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            Button{
                dismiss()
            } label: {
                HStack (spacing: 3){
                    Text("Already have an account?")
                    Text("Login")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                .foregroundColor(.black)
                .font(.footnote)
            }
            .padding(.vertical, 16)
        }
    }
}

#Preview {
    RegristationView()
}

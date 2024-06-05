//
//  RegristationView.swift
//  speach
//
//  Created by Aulia Octaviani on 23/05/24.
//

import SwiftUI

struct RegristationView: View {
    @StateObject var viewModel = RegisterationViewModel()
   
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            Text(" disini ikonnya")
            
            VStack{
                TextField( " Enter yaour Email", text : $viewModel.email)
                    .autocapitalization(.none)
                    .modifier(SpeachTextFieldModifier())
                SecureField("Enter yaour Password", text : $viewModel.password)
                    .modifier(SpeachTextFieldModifier())
                TextField( " Enter yaour full name", text : $viewModel.fullname)
                    .modifier(SpeachTextFieldModifier())
                TextField( " Enter yaour username", text : $viewModel.username)
                    .modifier(SpeachTextFieldModifier())
            }
            Button{
                Task { try await viewModel.createUser()}
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

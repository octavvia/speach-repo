//
//  LoginView.swift
//  speach
//
//  Created by Aulia Octaviani on 23/05/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    var body: some View {
        NavigationStack{
            
            
            
            VStack {
                Spacer()
                Text(" disini ikonnya")
                
                VStack{
                    TextField( " Enter yaour Email", text : $viewModel.email)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .modifier(SpeachTextFieldModifier())
                    SecureField("Enter yaour Password", text : $viewModel.password)
                        .modifier(SpeachTextFieldModifier())
                }
                    NavigationLink {
                        Text("Forget Password")
                    } label: {
                        Text("Forgot Password")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .padding(.vertical)
                            .padding(.trailing, 28)
                            .foregroundColor(.black)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                    }
                   
                    
                    Button{
                        Task { try await viewModel.login() }
                        
                    } label:{
                        Text("Login")
                            .modifier(ButtonSpeachModifier())
                    }
                    
                    Spacer()
                
                Divider()
                
                NavigationLink{
                    RegristationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack (spacing: 3){
                        Text("Dont't have an account?")
                        Text("Sign Up")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                    .foregroundColor(.black)
                    .font(.footnote)
                    
                }
                .padding(.vertical, 16)
               
                
            }
            
        }
    }
}

#Preview {
    LoginView()
}

//
//  CreateSpeachView.swift
//  speach
//
//  Created by Aulia Octaviani on 27/05/24.
//

import SwiftUI

struct CreateSpeachView: View {
    @State private var caption = ""
    var body: some View {
        NavigationStack{
            VStack{
                HStack(alignment: .top){
                    ProfileImageView()
                    VStack(alignment: .leading, spacing: 4){
                        Text("afskksks")
                            .fontWeight(.semibold)
                        
                        TextField("Start a speach ...", text: $caption, axis: .vertical)
                    }
                    .font(.footnote)
                    
                    Spacer()
                    if !caption.isEmpty {
                        Button{
                            caption = ""
                            
                        } label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundColor(.gray)
                        }
                    }
                }
                Spacer()
                
            }
            .navigationTitle("New Speach")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Button("Cancel"){
                        
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                    
                    
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button("Post"){
                        
                    }
                    .opacity(caption.isEmpty ? 0.5 : 1.0)
                    .disabled(caption.isEmpty)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                }
            }
        }
    }
}

#Preview {
    CreateSpeachView()
}

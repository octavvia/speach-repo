//
//  UserSelf.swift
//  speach
//
//  Created by Aulia Octaviani on 24/05/24.
//

import SwiftUI

struct UserSelf: View {
    var body: some View {
        HStack {
            ProfileImageView()
            
            VStack(alignment: .leading){
                Text("namename")
                    .fontWeight(.semibold)
                
                Text("Max Vertase")
            }
            .font(.footnote)
            Spacer()
            Text("Follow")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserSelf()
}

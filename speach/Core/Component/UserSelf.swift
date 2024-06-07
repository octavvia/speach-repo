//
//  UserSelf.swift
//  speach
//
//  Created by Aulia Octaviani on 24/05/24.
//

import SwiftUI

struct UserSelf: View {
//    let user = User
    
//    init(user: User) {
//          _viewModel = StateObject(wrappedValue: UserSelf(user: user))
//      }
//    
    var body: some View {
        HStack {
            ProfileImageView()
            
            VStack(alignment: .leading){
//                Text(user.username)
                Text("usename")
                    .fontWeight(.semibold)
                
//                Text(user.fullname)
                Text("user.fullname")
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

//#Preview {
//    UserSelf()
//}

struct UserSelf_Previews: PreviewProvider {
    static var previews: some View {
        UserSelf()
    }
}

//
//  ProfileImageView.swift
//  speach
//
//  Created by Aulia Octaviani on 24/05/24.
//

import SwiftUI

struct ProfileImageView: View {
    var body: some View {
        Text("0x")
                    .foregroundColor(.white)
                    .frame(width: 5, height: 5)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(25)
    }
}

#Preview {
    ProfileImageView()
}

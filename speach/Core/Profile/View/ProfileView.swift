//
//  ProfileView.swift
//  speach
//
//  Created by Aulia Octaviani on 23/05/24.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectFilters: ProfileSpeachFilter = .speachs
    @Namespace var animation
    
    private var filterBarWidth: CGFloat {
        let count = CGFloat(ProfileSpeachFilter.allCases.count)
        return (UIScreen.main.bounds.width - 20 * (count - 1)) / count
    }

    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                // bio and etc
                VStack(spacing: 20){
                    HStack (alignment: .top){
                        VStack(alignment: .leading, spacing: 12) {
                            // full name and username
                            VStack(alignment: .leading,spacing: 4) {
                                Text("Charles Sight")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                
                                Text("0xfkz_charlessight")
                                    .font(.subheadline)
                                
                            }
                            
                            Text("Something about Cryprocurrency and AirDrop insight!!! follow for meme coin insight now")
                                .font(.footnote)
                            
                            Text("200k followers")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        
                        ProfileImageView()
                    }
                    Button{
                        
                    } label: {
                        Text("Follow")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 352, height: 32)
                            .background(.black)
                            .cornerRadius(8)
                    }
                    
                    // user content list view
                    VStack{
                        HStack {
                            ForEach(ProfileSpeachFilter.allCases){
                                filter in
                                VStack{
                                    Text(filter.title)
                                        .font(.subheadline)
                                        .fontWeight(selectFilters == filter ? .semibold : .regular)
                                    if selectFilters == filter{
                                        Rectangle()
                                            .foregroundColor(.black)
                                            .frame(width: filterBarWidth, height: 1)
                                            .matchedGeometryEffect(id: "item", in: animation)
                                    } else {
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: filterBarWidth, height: 1)
                                    }
                                }
                                .onTapGesture {
                                    withAnimation(.spring()){
                                        selectFilters = filter
                                    }
                                }
                            }
                        }
                        LazyVStack {
                            ForEach(0...10, id: \.self) { speech in
                                SpeachSelf()
                            }
                        

                        }
                    }
                    .padding(.vertical)
                }
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        AuthService.shared.signOut()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ProfileView()
}

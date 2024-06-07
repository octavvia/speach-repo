//
//  ExploreView.swift
//  speach
//
//  Created by Aulia Octaviani on 23/05/24.
//

import SwiftUI

struct ExploreView: View {
    @State private var seachText = ""
    @StateObject var viewModel = ExploreViewModel()
     
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack{
                    ForEach(viewModel.users) { user in
                        NavigationLink(value: user) {
                            VStack {
//                                UserSelf(user: user)
                                Divider()
                            }
                            .padding(.vertical, 4)
                        }
                    }
                }
            }
            .navigationDestination(for: User.self, destination: {
                user in ProfileView()
            })
            .navigationTitle("Search")
            .searchable(text: $seachText, prompt: "Search")
        }
    }
}

#Preview {
    ExploreView()
}

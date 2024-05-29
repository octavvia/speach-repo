//
//  ExploreView.swift
//  speach
//
//  Created by Aulia Octaviani on 23/05/24.
//

import SwiftUI

struct ExploreView: View {
    @State private var seachText = ""
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack{
                    ForEach(0 ... 10, id: \.self) { user in
                        VStack {
                            UserSelf()
                            Divider()
                        }
                        .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Search")
            .searchable(text: $seachText, prompt: "Search")
        }
    }
}

#Preview {
    ExploreView()
}

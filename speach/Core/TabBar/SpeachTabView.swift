//
//  SpeachTabView.swift
//  speach
//
//  Created by Aulia Octaviani on 23/05/24.
//

import SwiftUI

struct SpeachTabView: View {
    @State private var showCreateSpeachView = false
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            FeedView()
                .tabItem {
                    Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                }
                .tag(0)
                .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
            
            ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(1)
            
            CreateSpeachView()
                .tabItem {
                    Image(systemName: "plus")
                }
                .tag(2)
                .sheet(isPresented: $showCreateSpeachView, onDismiss: {
                    selectedTab = 0
                }) {
                    CreateSpeachView()
                }
            
            ActivityView()
                .tabItem {
                    Image(systemName: selectedTab == 3 ? "heart.fill" : "heart")
                }
                .tag(3)
                .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
            
            ProfileView()
                .tabItem {
                    Image(systemName: selectedTab == 4 ? "person.fill" : "person")
                }
                .tag(4)
                .environment(\.symbolVariants, selectedTab == 4 ? .fill : .none)
        }
        .tint(Color.primary)
    }
}


#Preview {
    SpeachTabView()
}

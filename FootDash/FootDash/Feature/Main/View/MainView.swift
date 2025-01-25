//
//  MainView.swift
//  FootDash
//
//  Created by Andrew Hardin on 1/24/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView { 
            NavigationStack {
                DiscoverView()
                    .navigationTitle("Discover")
                    .toolbar { 
                        ToolbarItem(placement: .topBarTrailing) { 
                            Button { 
                                /// Search Action Goes In Here
                            } label: {      
                                Image(systemName: "magnifyingglass.circle")
                                    .foregroundStyle(Color.gray.opacity(0.8))
                                    .imageScale(.large)
                            }
                        }
                        
                        ToolbarItem(placement: .topBarTrailing) { 
                            Button { 
                                /// Noti Action Goes In Here
                            } label: {      
                                Image(systemName: "bell.circle")
                                    .foregroundStyle(Color.gray.opacity(0.8))
                                    .imageScale(.large)
                            }
                        }
                    }
            }
            .tabItem { 
                Label("Discover", systemImage: "house.circle")
            }
                    
                    
            NavigationStack {
                StandingView()
                    .navigationTitle("Standing")
            }
            .tabItem { 
                Label("Standing", systemImage: "list.bullet.circle")
            }
            
            NavigationStack {
                SettingView()
                    .navigationTitle("Setting")
            }
            .tabItem { 
                Label("Setting", systemImage: "gear.circle")
            }
        }
        .foregroundStyle(Color.gray)
        .tint(Color.brown)
    }
}

#Preview {
    MainView()
}

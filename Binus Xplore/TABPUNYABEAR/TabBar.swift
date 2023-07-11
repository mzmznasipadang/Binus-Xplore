//
//  TabBar.swift
//  Binus Xplore
//
//  Created by Victor Chandra on 11/07/23.
//

import SwiftUI

enum Tab: Int{
    case bookmark, home, profile
}

struct TabBar: View {
    
    @Binding var selectedTab : Tab
    var body: some View {
        
        ZStack{
            Rectangle()
                .fill(.white)
                .frame(height: 94)
            HStack{
                
                
                NavigationLink(destination: Bookmark()) {
                    Button(action: {
                        // Bookmark
                        selectedTab = .bookmark
                    }) {
                        Image(systemName: selectedTab == .bookmark ? "bookmark.fill" : "bookmark")
                            .font(Font.custom("SF Pro", size: 40))
                            .foregroundColor(selectedTab == .bookmark ? Color(red: 0, green: 0.29, blue: 0.68) : Color(red: 0.53, green: 0.73, blue: 1))
                    }
                }
                
                
                Spacer()
                NavigationLink(destination: HomeView()) {
                    Button(action: {
                        // Handle button press
                        selectedTab = .home
                    }) {
                        ZStack{
                            Circle()
                                .fill(selectedTab == .home ? Color(red: 0, green: 0.29, blue: 0.68) : Color(red: 0.53, green: 0.73, blue: 1))
                                .frame(width: 76, height: 76)
                                .offset(y:-25)
                                .overlay(
                                    Circle().stroke(Color.white, lineWidth: 7).offset(y:-25)
                                )
                            Image(systemName: "house.fill")
                                .font(Font.custom("SF Pro", size: 47))
                                .foregroundColor(.white)
                                .offset(y:-28)
                        }
                    }
                }
                Spacer()
                
                NavigationLink(destination: LandingPage()) {
                    Button(action: {
                        // Handle button press
                        selectedTab = .bookmark
                    }) {
                        Image(systemName: selectedTab == .profile ? "person.fill" : "person")
                            .font(Font.custom("SF Pro", size: 40))
                            .foregroundColor(selectedTab == .profile ? Color(red: 0, green: 0.29, blue: 0.68) : Color(red: 0.53, green: 0.73, blue: 1))
                    }
                    
                }
            }
        } .frame(height:82)
    }
}

struct TabBar_Previews: PreviewProvider{
    static var previews: some View{
        TabBar(selectedTab: .constant(.bookmark))
    }
}

//
//  CustomTabBar.swift
//  Binus Xplore
//
//  Created by Victor Chandra on 10/07/23.
//

import SwiftUI

enum Tabs: Int{
    case home = 0
    case bookmark = 1
    case profile = 2
}


struct CustomTabBar: View {
    @Binding var selectedTab : Tabs
    
    var body: some View {
        
        HStack (alignment: .center){
            
            //Trying with navigation Link?
            //Nevermind
                    Button{
                        //bookmark
                        
                        selectedTab = .bookmark
                    } label: {
                        TabBarButton(buttonText: "Bookmark",
                                     imageName: "bookmark", isActive:
                                        selectedTab == .bookmark)
                        
                        
                    } .tint(Color(red: 0.53, green: 0.73, blue: 1))
                
            
            Button{
                //home button
                selectedTab = .home
            } label: {
                VStack(alignment: .center, spacing: 4){
                    Image(systemName: "house.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 76 , height: 76)
                        .foregroundColor(Color(red: 0, green: 0.29, blue: 0.68))
                        
                    Text("Home")
                }
                
            }.offset(y : -20)
            
            
            Button{
                //profile button
                selectedTab = .profile
            } label: {
                TabBarButton(buttonText: "Profile",
                             imageName: "person", isActive:
                                selectedTab == .profile)
            } .tint(Color(red: 0.53, green: 0.73, blue: 1))
            
        }
        .frame(height:82)
    }
}

struct CustomTabBar_Previews: PreviewProvider{
    static var previews: some View{
        CustomTabBar(selectedTab: .constant(.bookmark))
    }
}

//
//  Bookmark.swift
//  Binus Xplore
//
//  Created by Jessica Lynn on 10/07/23.
//

import Foundation
import SwiftUI

struct Bookmark: View {
    
    @State var selectedTab: Tab = .bookmark
    
    var body: some View {
        NavigationView {
                VStack{
                    VStack{ //Using VStack instead of ZStack
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 354, height: 400)
                            .background(
                                Image("404")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 354, height: 253)
                                    .clipped()
                            ).offset(y:60)
                        Text("Any favorite spot in mind?")
                            .foregroundColor(Color(red: 0.32, green: 0.32, blue: 0.32))
                            .font(.system(size: 20, weight: .medium, design: .default))
                            
                    }.offset(y: 10)
                    .navigationTitle("Bookmarked Places")
                    
                    Spacer()
                    TabBar(selectedTab: $selectedTab)
                }
        }
        
        .background(Color(red: 0.97, green: 0.97, blue: 0.97))
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct Bookmark_Previews: PreviewProvider {
    static var previews: some View {
        Bookmark()
    }
}

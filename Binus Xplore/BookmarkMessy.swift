//
//  BookmarkMessy
//  Binus Xplore
//
//  Created by Jessica Lynn on 10/07/23.
//

import Foundation
import SwiftUI

struct bookmark: View {
    
//    enum Tab {
//        case bookmark, home, profile
//    }
//
//    var selectedTab: Tab
    
    var body: some View {
        
        NavigationView{
//            ZStack {
                // Your other views go here
            VStack {
                VStack{
                    Spacer()
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 354, height: 253)
                        .background(
                            Image("404")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 354, height: 253)
                                .clipped()
                        )
                    Text("Any favorite spot in mind?")
                        .font(Font.custom("SF Pro", size: 18))
                        .foregroundColor(Color(red: 0.32, green: 0.32, blue: 0.32))
                    Spacer()
                }
                .safeAreaInset(edge: .bottom){
                    //batas antara content sama navbar
                    ZStack{
                        Rectangle()
                            .fill(.white)
                            .frame(height: 94)
                        HStack{
                            //                            NavigationLink(destination: Bookmark2()){
                            Image(systemName: "bookmark.fill")
                                .font(Font.custom("SF Pro", size: 40))
                                .foregroundColor(Color(red: 0, green: 0.29, blue: 0.68))
                            //                            }
                            Spacer()
                            NavigationLink(destination: HomeView()){
                                ZStack{
                                    Circle()
                                        .fill(Color(red: 0.53, green: 0.73, blue: 1))
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
                            Spacer()
                            
                            NavigationLink(destination: Onboarding2()){
                                Image(systemName: "person")
                                    .font(Font.custom("SF Pro", size: 40))
                                    .foregroundColor(Color(red: 0.53, green: 0.73, blue: 1))
                            }
                        }.padding(.horizontal, 78.0)
                    }
                }
                .edgesIgnoringSafeArea(.bottom)
                .frame(maxHeight: .infinity)
                .navigationTitle("Bookmarked Places")
            }
            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
//            }.navigationTitle("Bookmarked Places")
        }

    }
}

struct bookmark_Previews: PreviewProvider {
    static var previews: some View {
        bookmark()
    }
}

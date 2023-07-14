//
//  BookmarkMessy
//  Binus Xplore
//
//  Created by Jessica Lynn on 10/07/23.
//

import Foundation
import SwiftUI

struct Bookmark: View {
    
    var body: some View {
        
        NavigationView{
            //            ZStack {
            // Your other views go here
            VStack {
                VStack{
                    HStack{
                        Text("Bookmarked Places")
                            .font(.system(size: 34).weight(.bold))
                            .padding(.top, 10)
                            .padding(.bottom, -1)
                            .padding(.leading, 30)
                        Spacer()
                    }
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
                        .fontWeight(.medium)
                        .font(.system(size: 18))
                        .foregroundColor(Color("Apple"))
                    Spacer()
                }
                .safeAreaInset(edge: .bottom){
                    //batas antara content sama navbar
                    ZStack{
                        Rectangle()
                            .fill(Color("AppleText"))
                            .frame(height: 94)
                        HStack{
                            Image(systemName: "bookmark.fill")
                                .font(.system(size: 40))
                                .foregroundColor(Color("MainColor"))
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
                            
                            NavigationLink(destination: Profile()){
                                Image(systemName: "person")
                                    .font(Font.custom("SF Pro", size: 40))
                                    .foregroundColor(Color("MainColor"))
                            }
                        }.padding(.horizontal, 74.0)
                    }
                }
                .edgesIgnoringSafeArea(.bottom)
                .frame(maxHeight: .infinity)
            }
            .background(Color("WhiteBG"))
        }
        .navigationBarBackButtonHidden(true)
        
    }
}

struct BookMark_Previews: PreviewProvider {
    static var previews: some View {
        Bookmark()
    }
}

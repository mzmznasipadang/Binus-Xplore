//
//  BookmarkMessy
//  Binus Xplore
//
//  Created by Jessica Lynn on 10/07/23.
//

import Foundation
import SwiftUI

struct Bookmark: View {
    @State private var isEmpty = false
    @State private var navigate = false
    let items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]
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
                    if (isEmpty == true){
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
                    }
                    else{
                        ScrollView {
                            VStack(spacing: 8) {
                                ForEach(items, id: \.self) { item in
                                    Button(action: {
                                        self.navigate = true
                                    }) {
                                        RoundedRectangle(cornerRadius: 16)
                                            .foregroundColor(.white)
                                            .frame(width: 352.0, height: 169.0)
                                            .overlay(
                                                HStack(spacing: 8) {
                                                    Image(systemName: "photo")
                                                        .resizable()
                                                        .padding()
                                                        .frame(width: 138.0, height: 138.0)
                                                        .foregroundColor(.white)
                                                        .background(Color("MainColor"))
                                                        .cornerRadius(8)
                                                        .offset(x:17)
                                                    
                                                    VStack(alignment: .leading, spacing: 4) {
                                                        Text("C0302")
                                                            .font(.system(size: 24))
                                                            .fontWeight(.bold)
                                                            .foregroundColor(.black)
                                                            .padding(.leading)
                                                            
                                                        
                                                        
                                                        HStack{
                                                            Image(systemName: "location")
                                                                .foregroundColor(.black)
                                                                .padding(.leading)
                                                            
                                                            Text("Floor 2, C Tower")
                                                                .foregroundColor(.black)
                                                                .font(.system(size: 16))
                                                                .lineLimit(1)
                                                                
                    
                                                        }
                                                        
                                                        HStack{
                                                            Image(systemName: "clock")
                                                                .foregroundColor(.black)
                                                                .padding(.leading)
                                                            
                                                            Text("07.00 - 15.00")
                                                                .foregroundColor(.black)
                                                                .font(.system(size: 16))
                                                                .lineLimit(1)
                                                                .frame(width: 95.0)
                                                                
                                                        }.offset(y:5)
                                                        
                                                        
                                                    }.offset(x:7)
                                                        .frame(width: 165, height: 300, alignment: .leading)
                                
                                                    
                                                    Image(systemName: "chevron.right")
                                                        .foregroundColor(.black)
                                                        .padding()
                                                    
                                                }
                                                    .padding(.horizontal)
                                                
                                            )
                                    }
                                    NavigationLink(destination: StartingPoint(), isActive: $navigate) { EmptyView() }
                                }
                            }
                            .padding()
                            .offset(y:-20)
                            
                            
                            
                            
                        }
                    }
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
                                    .foregroundColor(Color(red: 0.53, green: 0.73, blue: 1))
                            }
                        }.padding(.horizontal, 74.0)
                    }
                }
                .edgesIgnoringSafeArea(.bottom)
                .frame(maxHeight: .infinity)
            }
            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct BookMark_Previews: PreviewProvider {
    static var previews: some View {
        Bookmark()
    }
}

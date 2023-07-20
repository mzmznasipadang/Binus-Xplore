//
//  BookmarkMessy
//  Binus Xplore
//
//  Created by Jessica Lynn on 10/07/23.
//

import Foundation
import SwiftUI

struct Bookmark: View {
    @State private var navigate = false
    @EnvironmentObject var globalData: GlobalData
    
    //    @ObservedObject var globalData = GlobalData()
    var body: some View {
        
        NavigationView{
            //            ZStack {
            // Your other views go here
            VStack {
                VStack{
                    HStack{
                        Text("Bookmark")
                            .font(.system(size: 34).weight(.bold))
                            .padding(.top, 10)
                            .padding(.bottom, -1)
                            .padding(.leading, 30)
                        Spacer()
                    }
                    Spacer()
                    if (globalData.listOfBookMark.isEmpty){
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
                            .foregroundColor(Color("Apple"))
                    }
                    else{
                        ScrollView {
                            VStack(spacing: 8) {
                                ForEach(globalData.listOfBookMark) { bookmark in
                                    RoundedRectangle(cornerRadius: 16)
                                        .foregroundColor(.white)
                                        .frame(width: 352.0, height: 169.0)
                                        .overlay(
                                            HStack(spacing: 8) {
                                                Image(bookmark.images.first!)
                                                    .resizable()
                                                    .padding()
                                                    .frame(width: 138.0, height: 138.0)
                                                    .foregroundColor(.white)
                                                    .cornerRadius(8)
                                                    .offset(x:17)
                                                
                                                VStack(alignment: .leading, spacing: 4) {
                                                    Text(bookmark.name)
                                                        .font(.system(size: 24))
                                                        .fontWeight(.bold)
                                                        .foregroundColor(.black)
                                                        .padding(.leading)
                                                    
                                                    
                                                    
                                                    HStack{
                                                        Image(systemName: "location")
                                                            .foregroundColor(.black)
                                                            .padding(.leading)
                                                        
                                                        Text("\(bookmark.floor), \(bookmark.building)")
                                                            .foregroundColor(.black)
                                                            .font(.system(size: 16))
                                                            .lineLimit(1)
                                                        
                                                        
                                                    }
                                                    
                                                    HStack{
                                                        Image(systemName: "clock")
                                                            .foregroundColor(.black)
                                                            .padding(.leading)
                                                        
                                                        Text("\(bookmark.time)")
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
                            NavigationLink(destination: HomeView().environmentObject(globalData)){
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
                            
                            NavigationLink(destination: Profile().environmentObject(globalData)){
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
            .background(Color("WhiteBG"))
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct BookMark_Previews: PreviewProvider {
    static var previews: some View {
        Bookmark().environmentObject(GlobalData())
    }
}

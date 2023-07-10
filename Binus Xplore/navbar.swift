//
//  navbar.swift
//  Binus Xplore
//
//  Created by Jessica Lynn on 10/07/23.
//

import Foundation
import SwiftUI

struct navbar: View {
    var body: some View {
//        TabView {
//            Bookmark2()
//                .tabItem{
//                    Image(systemName: "bookmark")
//                }
//            HomeView()
//                .tabItem{
//                    Image(systemName: "house")
//                }
//            Onboarding2()
//                .tabItem{
//                    Image(systemName: "bookmark")
//                }
//        }
        ZStack {
            // Your other views go here

            VStack {
                Spacer()
                ZStack{
                    Rectangle()
                        .fill(.black)
                        .frame(height: 94) // Adjust this to change the height of the rectangle
                    HStack{
                        Image(systemName: "bookmark")
                            .foregroundColor(.white)
                            .scaledToFit()
                        Spacer()
                        ZStack{
                            Image("homebutton")
                                .scaledToFit()
                                
                        }
                        Spacer()
                        Image(systemName: "person")
                            .foregroundColor(.white)
                            .scaledToFit()
                    }
                }
                
                
            }.edgesIgnoringSafeArea(.bottom)
        }
        
    }
}

struct navbar_Previews: PreviewProvider {
    static var previews: some View {
        navbar()
    }
}

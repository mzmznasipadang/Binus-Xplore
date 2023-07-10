//
//  bookmark tes.swift
//  Binus Xplore
//
//  Created by Jessica Lynn on 10/07/23.
//

import Foundation
//
//  ContentView.swift
//  bookmark tes
//
//  Created by Jessica Lynn on 07/07/23.
//

import SwiftUI

struct Bookmark2: View {
    var body: some View {
        NavigationView {
                VStack{
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
                    .frame(width: 414, height: 896)
                    .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                    .cornerRadius(30)
                    .navigationTitle("Bookmarked Places")
                    .padding(10)
            
            
        }
    }
}

struct Bookmark2_Previews: PreviewProvider {
    static var previews: some View {
        Bookmark2()
    }
}
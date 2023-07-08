//
//  Bookmark.swift
//  Binus Xplore
//
//  Created by Victor Chandra on 07/07/23.
//

import Foundation
import SwiftUI

//struct Constants {
//    static let Primary: Color = Color(red: 0, green: 0.29, blue: 0.68)
//}

struct Bookmark: View {
    @State private var animate = false

    var body: some View {
        ZStack {
            createGrid(offset: animate ? -UIScreen.main.bounds.width : 0)
            createGrid(offset: animate ? 0 : UIScreen.main.bounds.width)
        }
        .onAppear {
            withAnimation(Animation.linear(duration: 5).repeatForever(autoreverses: false)) {
                animate = true
            }
        }
    }

    func createGrid(offset: CGFloat) -> some View {
        HStack{
            VStack {
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
                    
            }.foregroundStyle(.blue)
            VStack {
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
            }.foregroundStyle(.red)
            VStack {
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
            }.foregroundStyle(.blue)
            VStack {
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
            }.foregroundStyle(.red)
            VStack {
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
            }.foregroundStyle(.blue)
            VStack {
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
                    
            }.foregroundStyle(.blue)
            VStack {
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
            }.foregroundStyle(.red)
            VStack {
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
            }.foregroundStyle(.blue)
            VStack {
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
            }.foregroundStyle(.red)
            VStack {
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
            }.foregroundStyle(.blue)
            VStack {
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
                    
            }.foregroundStyle(.blue)
            VStack {
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
            }.foregroundStyle(.red)
            VStack {
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
            }.foregroundStyle(.blue)
            VStack {
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
            }.foregroundStyle(.red)
            VStack {
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
                Image(systemName: "iphone")
                Image(systemName: "iphone.gen2")
            }.foregroundStyle(.green)
            
//            VStack {
//                Image(systemName: "iphone.gen2")
//                Image(systemName: "iphone")
//                Image(systemName: "iphone.gen2")
//                Image(systemName: "iphone")
//                Image(systemName: "iphone.gen2")
//            }.foregroundStyle(.yellow)
        }
        
        .offset(x: offset)
        
    }
}



    struct Bookmark_Previews: PreviewProvider {
        static var previews: some View {
            Bookmark()
        }
    }

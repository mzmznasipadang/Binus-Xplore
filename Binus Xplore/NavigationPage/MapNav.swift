//
//  MapNav.swift
//  Binus Xplore
//
//  Created by Aaron Jeremy Alexander on 18/07/23.
//

import Foundation
import SwiftUI

struct MapNav: View {
    
    @State private var isSaved = false
    @State private var isRectangleGreen = false
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var globalData: GlobalData
    let viewModel: ContentViewModel

    
    var body: some View {
        NavigationView{
            VStack{
        
                ZStack {
                    MapNavView(viewModel: viewModel).environmentObject(globalData)
                        .foregroundColor(.black)
                      .frame(width: 414, height: 721)
                      .background(.white)
                      .cornerRadius(35)
                      .offset(y:80)
                }
                .frame(width: 414, height: 896)
                .background(Color(red: 0, green: 0.29, blue: 0.68))
                .cornerRadius(30)
                .edgesIgnoringSafeArea(.vertical)
                .navigationBarItems(
                    leading: Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(Color.black)
                            .frame(width: 40.0, height: 40.0)
                            .font(.system(size: 12).weight(.semibold))
                            .background(Color.white)
                            .clipShape(Circle())
                        
                    }
                        .padding(.top, 15.0),
                    trailing: Text("Navigation")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.trailing, 105.0)
                        .padding(.top, 19)
                        .foregroundColor(.white)
                )
            }
        }.navigationBarBackButtonHidden(true)
    }
}



struct MapNav_Previews: PreviewProvider {
    static var previews: some View {
        MapNav(viewModel: ContentViewModel(endNode: "LKC", startNode: "GOR")).environmentObject(GlobalData())
    }
}

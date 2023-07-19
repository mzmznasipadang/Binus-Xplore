//
//  MapNavView.swift
//  Binus Xplore
//
//  Created by Aaron Jeremy Alexander on 18/07/23.
//

import Foundation
import SwiftUI

struct MapNavView: View {
    
    @State private var isSaved = false
    @State private var isRectangleGreen = false
    @State private var navigate = false
    @EnvironmentObject var globalData: GlobalData

    
    var body: some View {
        VStack (alignment: .leading, spacing: 15){
            HStack {
                Text("10 mins")
                RoundedRectangle(cornerRadius: 10)
                    .frame(width:35,height:34)
                    .foregroundColor(Color(red: 0.53, green: 0.73, blue: 1))
                    .overlay(
                        Image(systemName:"figure.roll"))
                RoundedRectangle(cornerRadius: 10)
                    .frame(width:35,height:34)
                    .foregroundColor(Color(red: 1, green: 0.72, blue: 0.72))
                    .overlay(
                        Image(systemName:"figure.roll"))
                RoundedRectangle(cornerRadius: 10)
                    .frame(width:35,height:34)
                    .foregroundColor(Color(red: 0.53, green: 0.73, blue: 1))
                    .overlay(
                        Image(systemName:"figure.roll"))
                RoundedRectangle(cornerRadius: 10)
                    .frame(width:35,height:34)
                    .foregroundColor(Color(red: 0.2, green: 0.75, blue: 0.36).opacity(0.76))
                    .overlay(
                        Image(systemName:"arrow.right"))
            }
            .frame(width: 265, height: 48)
            .background(Color(red: 0.85, green: 0.85, blue: 0.85))
            .cornerRadius(10)
            .padding()
            .offset(x:26,y:-30)
///
            Text("Start here:")
              .font(
                Font.custom("SF Pro", size: 20)
                  .weight(.semibold)
              )
              .foregroundColor(.black)
              .frame(width: 131.90323, height: 29, alignment: .topLeading)
              .offset(y:-30)


 ///
            ScrollView(showsIndicators: false){
                MapNavChecked()

                MapNavChecked()

                MapNavChecked()
                
                MapNavChecked()
            }
            .frame(height:440)
            .offset(y:-30)

///
            Button {
                self.navigate = true
            } label: {
                HStack(alignment: .center, spacing: 10) {
                    Text("Arrived at Destination")
                      .font(
                        Font.custom("SF Pro Display", size: 20)
                          .weight(.medium)
                      )
                      .lineLimit(1)
                      .kerning(0.374)
                      .foregroundColor(.white)
                      .frame(width:200)
                }
                .padding(.horizontal, 120)
                .padding(.vertical, 14)
                .frame(width: 354, alignment: .center)
                .background(Color(red: 0, green: 0.29, blue: 0.68))
                .cornerRadius(15)
                .offset(y:-25)
                NavigationLink(destination: HomeView().environmentObject(globalData), isActive: $navigate) { EmptyView() }
                
            }

        }
    }
}


struct MapNavView_Previews: PreviewProvider {
    static var previews: some View {
        MapNavView().environmentObject(GlobalData())
    }
}

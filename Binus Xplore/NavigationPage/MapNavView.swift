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
    let viewModel: ContentViewModel


    
    var body: some View {
        VStack (alignment: .leading, spacing: 15){
            HStack {
                Text("\(viewModel.nodeDistances[viewModel.endNode] ?? 0) meters")
                ForEach(viewModel.pathNodes, id: \.self){ node in
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width:35,height:34)
                        .foregroundColor(Color(red: 0.53, green: 0.73, blue: 1))
                        .overlay(
                            Image(systemName:"figure.roll"))
                }
                RoundedRectangle(cornerRadius: 10)
                    .frame(width:35,height:34)
                    .foregroundColor(Color(red: 0.2, green: 0.75, blue: 0.36).opacity(0.76))
                    .overlay(
                        Image(systemName:"arrow.right"))
//                RoundedRectangle(cornerRadius: 10)
//                    .frame(width:35,height:34)
//                    .foregroundColor(Color(red: 0.53, green: 0.73, blue: 1))
//                    .overlay(
//                        Image(systemName:"figure.roll"))
//                RoundedRectangle(cornerRadius: 10)
//                    .frame(width:35,height:34)
//                    .foregroundColor(Color(red: 1, green: 0.72, blue: 0.72))
//                    .overlay(
//                        Image(systemName:"figure.roll"))
//                RoundedRectangle(cornerRadius: 10)
//                    .frame(width:35,height:34)
//                    .foregroundColor(Color(red: 0.53, green: 0.73, blue: 1))
//                    .overlay(
//                        Image(systemName:"figure.roll"))
//                RoundedRectangle(cornerRadius: 10)
//                    .frame(width:35,height:34)
//                    .foregroundColor(Color(red: 0.2, green: 0.75, blue: 0.36).opacity(0.76))
//                    .overlay(
//                        Image(systemName:"arrow.right"))
            }
            .frame(width: 265, height: 48)
            .background(Color(red: 0.85, green: 0.85, blue: 0.85))
            .cornerRadius(10)
            .padding()
            .offset(x:26,y:-30)
///
            Text("Start here:")
                .font(.system(size: 20).weight(.semibold))
              .foregroundColor(.black)
              .frame(width: 131.90323, height: 29, alignment: .topLeading)
              .offset(y:-40)


 ///
            ScrollView(showsIndicators: false){
                ForEach(viewModel.pathNodes, id: \.self) { node in
                    if let distance = viewModel.nodeDistances[node] {
                        let nodeInfo = NodeInfo(name: node, distance: "\(distance) meters")
                        MapNavChecked(node: nodeInfo)
                    }
                }
            }
            .frame(height:440)
            .offset(y:-40)
            
            

///
            NavigationLink(destination: HomeView().environmentObject(globalData)) {
                HStack(alignment: .center, spacing: 10) {
                    Text("Arrived at Destination")
                        .font(Font.custom("SF Pro Display", size: 20).weight(.medium))
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
            }
            .offset(y:-40)


        }
    }
}


struct MapNavView_Previews: PreviewProvider {
    static var previews: some View {
        MapNavView(viewModel: ContentViewModel(endNode: "LKC", startNode: "GOR")).environmentObject(GlobalData())
    }
}

//
//  MapNavChecked.swift
//  Binus Xplore
//
//  Created by Aaron Jeremy Alexander on 18/07/23.
//

import Foundation
import SwiftUI

struct MapNavChecked: View {
    let node: NodeInfo
    @State private var isSaved = false
    @State private var isRectangleGreen = false
    
    var body: some View {
        VStack (alignment: .leading, spacing: 15){
            HStack {
                ZStack {
                    Circle()
                        .foregroundColor(isRectangleGreen ? Color(red: 0.2, green: 0.75, blue: 0.36) : Color(red: 0.85, green: 0.85, blue: 0.85))
                        .frame(width:28, height:28)
                    Circle()
                        .foregroundColor(Color.white)
                        .frame(width:12.43, height:12.43)
                }
                RoundedRectangle(cornerRadius: 7)
                    .frame(width:320, height:42.91)
                    .foregroundColor(isRectangleGreen ? Color(red: 0.2, green: 0.75, blue: 0.36).opacity(0.24) : Color(red: 0.85, green: 0.85, blue: 0.85))
                    .overlay(
                        HStack {
                            Image(systemName:"figure.roll")
                                .padding()
                            Text(node.name)
                                .offset(x:-8)
                            Button {
                                
                            } label: {
                                Image(systemName: "chevron.down")
                                    .foregroundColor(Color.black)
                                    .font(Font.custom("SF Pro", size: 7.87998)
                                        .weight(.semibold))
                            }
                            Spacer()
                            Button {
                                if (isSaved == false){
                                    isSaved = true
                                }
                                else{
                                    isSaved = false
                                }
                                isRectangleGreen.toggle()
                            } label: {
                                if (isSaved == false){
                                    Image(systemName: "square")
                                        .font(.system(size: 25))
                                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                                }
                                else{
                                    Image(systemName: "checkmark.square.fill")
                                        .font(.system(size: 25))
                                        .foregroundColor(Color(red: 0.2, green: 0.75, blue: 0.36))
                                }


                            }
                            .multilineTextAlignment(.trailing)
                            .padding()
//                            .offset(x:130)


                            

                        })
            }
            HStack{
                VStack{
                    Circle()
                        .frame(width: 8.09524, height: 8.09524)
                        .foregroundColor(isRectangleGreen ? Color(red: 0.2, green: 0.75, blue: 0.36) : Color(red: 0.85, green: 0.85, blue: 0.85))
                    Circle()
                        .frame(width: 8.09524, height: 8.09524)
                        .foregroundColor(isRectangleGreen ? Color(red: 0.2, green: 0.75, blue: 0.36) : Color(red: 0.85, green: 0.85, blue: 0.85))
                    Circle()
                        .frame(width: 8.09524, height: 8.09524)
                        .foregroundColor(isRectangleGreen ? Color(red: 0.2, green: 0.75, blue: 0.36) : Color(red: 0.85, green: 0.85, blue: 0.85))
                    Circle()
                        .frame(width: 8.09524, height: 8.09524)
                        .foregroundColor(isRectangleGreen ? Color(red: 0.2, green: 0.75, blue: 0.36) : Color(red: 0.85, green: 0.85, blue: 0.85))
                    Circle()
                        .frame(width: 8.09524, height: 8.09524)
                        .foregroundColor(isRectangleGreen ? Color(red: 0.2, green: 0.75, blue: 0.36) : Color(red: 0.85, green: 0.85, blue: 0.85))
                    Circle()
                        .frame(width: 8.09524, height: 8.09524)
                        .foregroundColor(isRectangleGreen ? Color(red: 0.2, green: 0.75, blue: 0.36) : Color(red: 0.85, green: 0.85, blue: 0.85))
                }.offset(x:9, y:-9)


                VStack(alignment: .leading) {
//                    Text("Walk")
//                      .font(
//                        Font.custom("SF Pro", size: 16)
//                          .weight(.semibold)
//                      )
//                      .foregroundColor(.black)
//                      .frame(width: 203, height: 21, alignment: .topLeading)

                    Text("\(node.distance)")
                      .font(
                        Font.custom("SF Pro", size: 14)
                          .weight(.medium)
                      )
                      .foregroundColor(.black)
                      .frame(width: 203, height: 21, alignment: .topLeading)

//                    Text("6 Mins")
//                      .font(
//                        Font.custom("SF Pro", size: 12)
//                          .weight(.medium)
//                      )
//                      .foregroundColor(.black)
//                      .frame(width: 203, height: 21, alignment: .topLeading)

                }.offset(x:30,y:-5)
            }

        }
    }
}


struct MapNavChecked_Previews: PreviewProvider{
    static var previews: some View {
        let nodeInfo = NodeInfo(name: "Node", distance: "80 meters")
        MapNavChecked(node: nodeInfo)
    }
}

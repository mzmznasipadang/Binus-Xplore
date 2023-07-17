//
//  information_content.swift
//  travel_unbound
//
//  Created by Tyogo Utomo on 10/07/23.
//

import Foundation
import SwiftUI
import CoreData

struct informationContent: View{
    let item: pinpoint?
    struct Constants {
        static let RedDanger3: Color = Color(red: 1, green: 0.27, blue: 0.27)
        static let Primary: Color = Color(red: 0, green: 0.29, blue: 0.68)
        static let Green: Color = Color(red: 0, green: 1, blue: 0.27)
    }
    @EnvironmentObject var globalData: GlobalData
    @State private var isSaved = false //nanti hrus diganti biar pass value nya supaya bs integrate coredata
    @State private var navigate = false
    @State private var updateView: Bool = false

    var body: some View{
        //------------ info card content
        VStack{
            VStack(alignment: .leading){
                HStack{
                    if (item!.status == false){
                        HStack{
                            Text("Close")
                                .font(
                                    Font.custom("SF Pro Display", size: 20)
                                        .weight(.medium)
                                )
                                .kerning(0.374)
                                .foregroundColor(Color(red: 1, green: 0.27, blue: 0.27))
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 5)
                        .cornerRadius(12)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .inset(by: -1)
                                .stroke(Constants.RedDanger3, lineWidth: 2)
                        )
                        .padding(.horizontal,20)
                    }
                    else{
                        HStack{
                            Text("Open")
                                .font(
                                    Font.custom("SF Pro Display", size: 20)
                                        .weight(.medium)
                                )
                                .kerning(0.374)
                                .foregroundColor(Color(red: 0, green: 1, blue: 0.27))
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 5)
                        .cornerRadius(12)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .inset(by: -1)
                                .stroke(Constants.Green, lineWidth: 2)
                        )
                        .padding(.horizontal,20)
                    }
                        
                        //                    if(calendar.component(.hour, from: date) < Date(.hour))
                        //                      .foregroundColor(Color(red: 1, green: 0.27, blue: 0.27))
                    Spacer()
                    Button {
                        if (isSaved == false){
                            isSaved = true
                        }
                        else{
                            isSaved = false
                        }
                    } label: {
                        if (isSaved == false){
                            Image(systemName: "bookmark")
                                .font(.system(size: 25))
                                .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        }
                        else{
                            Image(systemName: "bookmark.fill")
                                .font(.system(size: 25))
                                .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                        }
                            

                    }.offset(x: 42)

                }
                HStack{
                    Image(systemName: "location.fill")
                        .padding(.horizontal, 4)
                    Text("Lobby ")
                      .font(
                        Font.custom("SF Pro Display", size: 17)
                          .weight(.medium)
                      )
                      .kerning(0.374)
                      .foregroundColor(.black)
                    // ----------
                    Image(systemName: "clock.fill")
                        .padding(.horizontal, 4)
                    Text(item!.time)
                      .font(
                        Font.custom("SF Pro Display", size: 17)
                          .weight(.medium)
                      )
                      .kerning(0.374)
                      .foregroundColor(.black)
                    
                }
                .frame(alignment: .leading)
                .padding(.horizontal, 20)
                .padding(.vertical, 20)
                
                VStack(alignment: .leading){
                    Text("Description")
                        .bold()
                        .padding(.vertical,10)
                    Text(item!.description)
                        .font(.system(size: 15).weight(.light))
                      .kerning(0.374)
                      .foregroundColor(.black)
                      .frame(width: 332, height: 57, alignment: .top)
                      .offset(x:-5)
                }
                .padding(.horizontal, 20)
                VStack{
                    HStack{
                        Image(systemName: "clock.fill")
                          .resizable()
                          .aspectRatio(contentMode: .fill)
                          .frame(width: 85, height: 85)
                          .clipped()
                          .padding(.horizontal, 10)
                        Spacer()
                        Image(systemName: "clock.fill")
                          .resizable()
                          .aspectRatio(contentMode: .fill)
                          .frame(width: 85, height: 85)
                          .clipped()
                          .padding(.horizontal, 10)
                        Spacer()
                        Image(systemName: "clock.fill")
                          .resizable()
                          .aspectRatio(contentMode: .fill)
                          .frame(width: 85, height: 85)
                          .clipped()
                          .padding(.horizontal, 10)
                        Spacer()
                    }
                }
                .padding(.horizontal, 15)
//                .padding(.vertical, 15)
//                .background(Color.cyan)
                VStack(alignment: .leading){
                    Text("Category")
                        .bold()
                        .padding(.vertical,10)
                }
                .padding(.horizontal, 20)
                HStack{
                    VStack{
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 58, height: 58)
                          .cornerRadius(15)
                          .overlay(
                            RoundedRectangle(cornerRadius: 15)
                              .inset(by: 0.5)
                              .stroke(Color(red: 0.02, green: 0.09, blue: 0.42), lineWidth: 1)
                              .overlay(
                                Image(systemName: "briefcase.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40,height:30)
                                    .foregroundColor(Color(red: 0.02, green: 0.09, blue: 0.42))
                              )
                          )
                        Text(item!.category)
                          .font(Font.custom("SF Pro Display", size: 14))
                          .kerning(0.374)
                          .foregroundColor(.black)
                    }
                    VStack{
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 58, height: 58)
                          .cornerRadius(15)
                          .overlay(
                            RoundedRectangle(cornerRadius: 15)
                              .inset(by: 0.5)
                              .stroke(Color(red: 0.02, green: 0.09, blue: 0.42), lineWidth: 1)
                              .overlay(
                                Image(systemName: "building.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40,height:30)
                                    .foregroundColor(Color(red: 0.13, green: 0.31, blue: 0.41))
                              )
                          )
                        Text(item!.building)
                          .font(Font.custom("SF Pro Display", size: 14))
                          .kerning(0.374)
                          .foregroundColor(.black)
                    }
                    .padding(.horizontal, 15)
                    Spacer()
                }
                .padding(.horizontal, 20)
//                .background(.yellow)
                //2 opsi, starting point dan trip summary
                //harus bikin flag variabel buat cek start node uda keisi apa belom
                //kalo ya, trip summary
                //kalo ga, strting point
                
                if (globalData.startNode.isEmpty){
                    Button(action: {
                        self.navigate = true
                        globalData.endNode = item!.name
                        updateView.toggle()
                        print("End node: \(globalData.endNode)")
                    }) {
                        Text("Set Location")
                            .foregroundColor(.white)
                            .kerning(0.374)
                            .font(.system(size: 20).weight(.medium))
                            .padding(.vertical, 8)
                            .frame(width: 354, height: 50)
                    }
                    .background(Color(red: 0, green: 0.29, blue: 0.68))
                    .cornerRadius(15)
                    .padding(.top)
                    .background(
                        NavigationLink(destination: StartingPoint().environmentObject(globalData), isActive: $navigate) {
                            EmptyView()
                        }
                            .hidden()
                    )
                }
                else{
                    Button(action: {
                        self.navigate = true
                        globalData.startNode = item!.name
                        updateView.toggle()
                    }) {
                        Text("Set Location")
                            .foregroundColor(.white)
                            .kerning(0.374)
                            .font(.system(size: 20).weight(.medium))
                            .padding(.vertical, 8)
                            .frame(width: 354, height: 50)
                    }
                    .background(Color(red: 0, green: 0.29, blue: 0.68))
                    .cornerRadius(15)
                    .padding(.top)
                    
                    .background(
                        NavigationLink(destination: MapPage().environmentObject(globalData), isActive: $navigate) {
                            EmptyView()
                        }
                            .hidden()
                    )
                }
                
//                .background(.blue)
            }
//            .background(.red)
            .frame(width: 300)
            .padding(20)
//                .offset(y: -25)
        }
//        .background(.red)
            
            
            
            
            
        
    }
}
struct informationContent_Previews: PreviewProvider {
    static var previews: some View {
        let dummyItem = pinpoint(name: "Dummy", images: ["default_image"], status: false, time: "00:00 - 00:00", description: "Dummy description", isSaved: false, floor: "Dummy floor", building: "Dummy tower", category: "Office")
        informationContent(item: dummyItem).environmentObject(GlobalData())
    }
}
//informationContentView

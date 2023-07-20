//
//  information_content.swift
//  travel_unbound
//
//  Created by Tyogo Utomo on 10/07/23.
//

import Foundation
import SwiftUI

struct informationContent: View{
    let item: pinpoint?
    struct Constants {
        static let RedDanger3: Color = Color(red: 1, green: 0.27, blue: 0.27)
        static let Primary: Color = Color(red: 0, green: 0.29, blue: 0.68)
        static let Green: Color = Color(red: 0, green: 1, blue: 0.27)
    }
    @EnvironmentObject var globalData: GlobalData
    var isSaved: Bool {
        let defaultUUID = UUID()
        return globalData.savedPinpoints[item?.id ?? defaultUUID] ?? false
    }
//    @State private var isSaved = false //nanti hrus diganti biar pass value nya supaya bs integrate coredata
    @State private var navigate = false

    var body: some View{
        let (systemName, color) = detailsForCategory(item!.category)
        //------------ info card content
        VStack{
            VStack(alignment: .leading){
                HStack{
                    if (item!.status == false){
                        HStack{
                            Text("Close")
                                .font(
                                    Font.custom("SF Pro Display", size: 20)
                                        .weight(.medium))
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
                    Spacer()
                    Button {
                        if let pinpointID = item?.id {
                            globalData.savedPinpoints[pinpointID] = !(globalData.savedPinpoints[pinpointID] ?? false)
                            
                            if globalData.savedPinpoints[pinpointID] ?? false {
                                // di append kalo itemnya ke saved
                                if let item = item {
                                    globalData.listOfBookMark.append(item)
                                }
                            } else {
                                // Kalo ga ke save dia hapus
                                globalData.listOfBookMark.removeAll { $0.id == pinpointID }
                            }
                        }
                    } label: {
                        if let pinpointID = item?.id, globalData.savedPinpoints[pinpointID] ?? false {
                            Image(systemName: "bookmark.fill")
                                .font(.system(size: 25))
                                .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            
                        } else {
                            Image(systemName: "bookmark")
                                .font(.system(size: 25))
                                .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                            
                        }
                    }
                    .offset(x: 42)


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
                        Image(item!.images[0])
                          .resizable()
                          .aspectRatio(contentMode: .fill)
                          .frame(width: 85, height: 85)
                          .cornerRadius(10)
                          .clipped()
                          .padding(.horizontal, 10)
                        Spacer()
                        Image(item!.images[1])
                          .resizable()
                          .aspectRatio(contentMode: .fill)
                          .frame(width: 85, height: 85)
                          .cornerRadius(10)
                          .clipped()
                          .padding(.horizontal, 10)
                        Spacer()
                        Image(item!.images[2])
                          .resizable()
                          .aspectRatio(contentMode: .fill)
                          .frame(width: 85, height: 85)
                          .cornerRadius(10)
                          .clipped()
                          .padding(.horizontal, 10)
                        Spacer()
                    }
                }
                .padding(.horizontal, 15)
//                .padding(.vertical, 15)
//                .background(Color.cyan)
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
                              .stroke(color)
                              .overlay(
                                Image(systemName: systemName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40,height:30)
                                    .foregroundColor(color)
//                                    .foregroundColor(Color(red: 0.02, green: 0.09, blue: 0.42))
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
//                .background(.yellow)
                //2 opsi, starting point dan trip summary
                //harus bikin flag variabel buat cek start node uda keisi apa belom
                //kalo ya, trip summary
                //kalo ga, strting point
                Button(action: {
                    globalData.endNode = item!.name
                    self.navigate = true
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
                .offset(x: 8)
//                .padding(.leading)
                NavigationLink(destination: StartingPoint().environmentObject(globalData), isActive: $navigate) {EmptyView()
                }
                .hidden()
                
                
               

//                }
//                .background(.blue)
            }
//            .background(.red)
            .frame(width: 300)
            .padding(20)
//                .offset(y: -25)
        }

    }
    
    func detailsForCategory(_ category: String) -> (String, Color) {
        switch category {
            case "Office":
                return ("briefcase.fill", Color("ColorIcon1"))
            case "Class":
                return ("books.vertical.fill", Color("ColorIcon1"))
            case "Lab":
                return ("desktopcomputer", Color("ColorIcon1"))
            case "Public Facility":
                return ("person.2.fill", Color("ColorIcon1"))
            case "F & B":
                return ("cup.and.saucer.fill", Color("ColorIcon3"))
            case "Event":
                return ("party.popper.fill", Color("ColorIcon3"))
            // Add more cases as needed
            default:
                return ("questionmark", Color.gray)
        }
    }
}
struct informationContent_Previews: PreviewProvider {
        static var previews: some View {
                let dummyItem = pinpoint(name: "Dummy", images: ["default_image"], status: false, time: "00:00 - 00:00", description: "Dummy description", isSaved: false, floor: "Dummy floor", building: "Dummy tower", category: "Office")
                informationContent(item: dummyItem).environmentObject(GlobalData())
    }
}
//informationContentView


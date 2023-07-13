//
//  information_content.swift
//  travel_unbound
//
//  Created by Tyogo Utomo on 10/07/23.
//

import Foundation
import SwiftUI

struct informationContent: View{
    struct Constants {
        static let RedDanger3: Color = Color(red: 1, green: 0.27, blue: 0.27)
        static let Primary: Color = Color(red: 0, green: 0.29, blue: 0.68)
    }
    var body: some View{
        //------------ info card content
        VStack{
            VStack(alignment: .leading){
//                Spacer()
                HStack(){
                    Text("Close")
                      .font(
                        Font.custom("SF Pro Display", size: 20)
                          .weight(.medium)
                      )
                      .kerning(0.374)
                      .foregroundColor(Color(red: 1, green: 0.27, blue: 0.27))
//                    if(calendar.component(.hour, from: date) < Date(.hour))
//                      .foregroundColor(Color(red: 1, green: 0.27, blue: 0.27))
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
//                    .frame(width: 300, alignment: .leading)
//                    .padding(.horizontal, 20)
//                    .padding(.vertical, 10)
//                .background(Color.gray)
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
                    Text("08.00 - 17.00")
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
                    Text("Information center and facility to provide important announcements regarding student admission.  ")
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
                        Text("Office")
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
                        Text("C Building")
                          .font(Font.custom("SF Pro Display", size: 14))
                          .kerning(0.374)
                          .foregroundColor(.black)
                    }
                    .padding(.horizontal, 15)
                    Spacer()
                }
                .padding(.horizontal, 20)
//                .background(.yellow)
                
                Button { } label: {
                    Text("Set Destination")
                        .foregroundColor(.white)
                        .kerning(0.374)
                        .font(
                          Font.custom("SF Pro Display", size: 20)
                            .weight(.medium)
                        )
                        .padding(.vertical, 8)
                        .frame(
                            maxWidth: .infinity
                        )
                }
                .buttonStyle(.bordered)
//                .padding(.horizontal, 20)
                .background(Color(red: 0, green: 0.29, blue: 0.68))
                .cornerRadius(15)
                .padding(.top)
                .frame(width: 372, alignment: .center)
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
        informationContent()
    }
}
//informationContentView

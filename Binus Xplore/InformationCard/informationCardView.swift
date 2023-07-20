//
//  informationCardView.swift
//  Binus_Xplore
//
//  Created by Tyogo Utomo on 07/07/23.
//

import Foundation
import SwiftUI

struct informationCardView: View{
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var globalData: GlobalData
  
    let item: pinpoint?
    var body: some View{
        NavigationView{
            VStack(){
                ZStack{
                    HStack(alignment: .center, spacing: 0) { }
                        .padding(0)
                        .frame(width: 417, height: 364)
                        .background(
                            Image(item!.images.first!)
                                .resizable()
                                .opacity(0.8)
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 417, height: 364)
                                .clipped()
                                .brightness(-0.2)
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .inset(by: 1)
                                .stroke(Color(red: 0.69, green: 0.69, blue: 0.71), lineWidth: 2)
                            
                        )
                    Text(item!.name)
                        .font(.system(size: 40).weight(.semibold))
                        .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97))
//                        .foregroundColor(Color.black)
                        .frame(width: 346, height: 35, alignment: .topLeading)
                        .offset(y:70)
                    //                back()
                }.padding(.top, -20.0)
                
                //            Spacer()
                //------------ info card content
                ZStack{
                    Spacer()
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 414, height: 586)
                        .background(.white)
                        .cornerRadius(50)
                    ScrollView(.vertical){
                        informationContent(item: item).environmentObject(globalData)
                    }
                    
                }
                .padding(.top, -20.0)
                //            .resizable()
                .offset(y: -60)
                //            .background(.red)
                
            
            }
            .navigationBarItems(
                leading: Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color.black)
                        .font(.system(size: 12).weight(.semibold))
                        .frame(width: 40.0, height: 40.0)
                        .background(Color.white)
                        .clipShape(Circle())
                    
                }
                    .padding(.top, 15.0)
            )
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct informationCardView_Previews: PreviewProvider {
    static var previews: some View {
        let dummyItem = pinpoint(name: "Admission Office", images: ["admission-office-main"], status: false, time: "08:00 - 17:00", description: "Information center and facility to provide important announcements regarding student admission.", isSaved: false, floor: "Dummy floor", building: "Dummy tower", category: "Office")
        informationCardView(item: dummyItem).environmentObject(GlobalData())
    }
}
//informationCardView

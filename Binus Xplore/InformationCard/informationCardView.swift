//
//  informationCardView.swift
//  travel_unbound
//
//  Created by Tyogo Utomo on 07/07/23.
//

import Foundation
import SwiftUI

struct informationCardView: View{
    var body: some View{
        VStack(){
            ZStack{
                HStack(alignment: .center, spacing: 0) { }
                .padding(0)
                .frame(width: 417, height: 364)
                .background(
                  Image("admission-office-main")
                    .resizable()
                    .opacity(0.8)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 417, height: 364)
                    .clipped()
                )
                .overlay(
                  RoundedRectangle(cornerRadius: 30)
                    .inset(by: 1)
                    .stroke(Color(red: 0.69, green: 0.69, blue: 0.71), lineWidth: 2)
                )
                Text("Admission Office")
                  .font(
                    Font.custom("SF Pro", size: 40)
                      .weight(.semibold)
                  )
                  .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.97))
                  .frame(width: 346, height: 35, alignment: .topLeading)
                  .offset(y:70)
                back()
            }
//            Spacer()
            //------------ info card content
            ZStack{
                Spacer()
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 414, height: 586)
                  .background(.white)
                  .cornerRadius(30)
                ScrollView(.vertical){
                    informationContent()
                }
                
            }
//            .resizable()
            .offset(y: -60)
//            .background(.red)
            
            
        }
    }
}

struct informationCardView_Previews: PreviewProvider {
    static var previews: some View {
        informationCardView()
    }
}
//informationCardView

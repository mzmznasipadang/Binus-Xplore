//
//  ContentView.swift
//  StartingPoint
//
//  Created by Clarissa  on 10/07/23.
//

import SwiftUI

struct StartingPoint: View {
    @Environment(\.presentationMode) var presentationMode
    
    // Color
    //    struct Constants {
    //    static let Primary: Color = Color(red: 0, green: 0.29, blue: 0.68)
    //    }
    
    // Slider suggestion buttons
    let items = [
        Items(imageName: "building", title: "A0701"),
        Items(imageName: "cup.and.saucer", title: "Tomoro Coffee"),
        Items(imageName: "cup.and.saucer", title: "Dapur Nieta"),
        Items(imageName: "cup.and.saucer", title: "Disrupt")
    ]
    
    var body: some View {
        VStack {
            ZStack{
                Image("BinusImg")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 414, height: 350)
                    .cornerRadius(30)
                    .edgesIgnoringSafeArea(.all)
                    .frame(maxHeight: .infinity, alignment: .topLeading)
                
                
                ZStack{
                    // chevron button
                    
                    // Info Card
                    ZStack{
                        // Bar Atas
                        ZStack(alignment: .topLeading){
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(width: 355, height: 200)
                                .cornerRadius(20)
                                .ignoresSafeArea()
                            
                            HStack{
                                Image(systemName: "checkmark.seal.fill")
                                    .foregroundColor(.white)
                                
                                Text("We ensure your data privacy!")
                                    .font(Font.custom("SF Pro", size: 14)
                                        .weight(.semibold))
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.white)
                            }
                            .padding(16)
                        }
                        
                        // Inside bar warna grey
                        ZStack{
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(width: 355, height: 150)
                                .background(.white)
                                .cornerRadius(20)
                                .overlay(
                                    VStack{
                                        // search bar
                                        ZStack(alignment: .leading){
                                            Rectangle()
                                                .foregroundColor(.clear)
                                                .frame(width: 330, height: 46)
                                                .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                                                .cornerRadius(30)
                                            
                                            HStack{
                                                Image(systemName: "magnifyingglass")
                                                    .frame(width: 24, height: 24)
                                                
                                                Text("Where are you now?")
                                                    .font(Font.custom("SF Pro", size: 14))
                                                    .foregroundColor(Color(red: 0.54, green: 0.54, blue: 0.55))
                                            }
                                            .padding(11)
                                        }
                                        .padding(.top, 20)
                                        
                                        // Filter/Selection items
                                        ScrollView(.horizontal){
                                            HStack(spacing: 16){
                                                ForEach(items) { item in
                                                    Button(action: {
                                                        switch item.title {
                                                        case "A0701":
                                                            // Action for A0701 button
                                                            break
                                                        case "Tomoro Coffee":
                                                            // Action for Tomoro Coffee button
                                                            break
                                                        case "Dapur Nieta":
                                                            // Action for Dapur Nieta button
                                                            break
                                                        default:
                                                            break
                                                        }
                                                    }) {
                                                        HStack(spacing: 8) {
                                                            Image(systemName: item.imageName)
                                                                .foregroundColor(.white)
                                                            
                                                            Text(item.title)
                                                                .font(Font.custom("SF Pro", size: 14)
                                                                    .weight(.medium))
                                                                .foregroundColor(.white)
                                                        }
                                                    }
                                                    .padding(12)
                                                    .background(Color("MainColor"))
                                                    .cornerRadius(15)
                                                }
                                            }
                                            .padding(20)
                                        }
                                        
                                    }
                                )
                        }
                        .offset(y: 25)
                        
                        // Bar Bawah/ History
                        
                    }
                    .frame(maxHeight: .infinity, alignment: .topLeading)
                    .offset(y: 174)
                    
                }
                
            }
            
            
            Button(action: {
                
            }) {
                Text("Set Starting Point")
                    .font(Font.custom("SF Pro Display", size: 20)
                        .weight(.medium))
                    .foregroundColor(.white)
                    .frame(width: 354, height: 50)
                    .background(Color("MainColor"))
                    .cornerRadius(15)
                    .edgesIgnoringSafeArea(.all)
                
            }
            .padding()
            
        } .offset(y: -60)
    }
    
    struct StartingPoint_Previews: PreviewProvider {
        static var previews: some View {
            StartingPoint()
        }
    }
}


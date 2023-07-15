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
    
    // History List
    var historyList: [History] = Histories.historyL
    
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
                
                
                Image("StartPointBG")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 414, height: 350)
                    .edgesIgnoringSafeArea(.all)
                    .offset(y: 300)
                
                
                
                VStack{
                    // chevron button
                    
                    // Info Card
                    ZStack{
                        // Bar Atas
                        ZStack(alignment: .topLeading){
                            Rectangle()
                                .foregroundColor(Color("MainColor"))
                                .frame(width: 355, height: 200)
                                .cornerRadius(20)
                                .ignoresSafeArea()
                            
                            HStack{
                                Image(systemName: "checkmark.seal.fill")
                                    .foregroundColor(.white)
                                
                                Text("We ensure your data privacy!")
                                    .font(.system(size: 14).weight(.semibold))
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.white)
                            }
                            .padding(16)
                        }
                        
                        // Bar Bawah
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
                                        ScrollView(.horizontal, showsIndicators: false){
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
                                        .padding(.horizontal, 15.0)
                                        
                                    }
                                )
                        }
                        .offset(y: 25)
                        
                    }
                    .frame(maxHeight: .infinity, alignment: .topLeading)
                    .offset(y: 174)
                    
                    // History View
                    ScrollView {
                        LazyVStack(spacing: 5) {
                            ForEach(historyList, id: \.id) { history in
                                VStack(alignment: .leading) {
                                    HStack(spacing: 15) {
                                        Image(systemName: "clock.fill")
                                            .resizable()
                                            .frame(width: 25, height: 25)
                                            .foregroundColor(Color(red: 0.8, green: 0.87, blue: 1))
                                        
                                        Text(history.startPoint)
                                            .font(.custom("SF Pro", size: 15))
                                            .foregroundColor(.black)
                                        
                                        Image(systemName: "arrow.forward")
                                        
                                        Text(history.destination)
                                            .font(.custom("SF Pro", size: 15))
                                            .foregroundColor(.black)
                                        
                                        Spacer()
                                        
                                        //Favorites, gatau necessary atau engga
                                        Image(systemName: "star")
                                        
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.all, 15)
                                    .padding(.leading, 15)
                                    .background(Color.white)
                                    Divider()
                                        .background(Color.gray)
                                }
                                
                            }
                        }
                        .background(Color.white)
                    }
                    .frame(width: 355, height: 285)
                    .cornerRadius(20)
                    
                }
                
//                Image("StartPointBG")
                
            }
            
//            Image("StartPointBG")
            
            Button(action: {
                // Set Starting Point
                //ke search results
            }) {
                Text("Set Starting Point")
                    .font(.system(size: 20).weight(.medium))
                    .foregroundColor(.white)
                    .frame(width: 354, height: 50)
                    .background(Color("MainColor"))
                    .cornerRadius(15)
                    .edgesIgnoringSafeArea(.all)
                
            }
            .offset(y:70)
            .padding()
            
        }
        .offset(y: -60)
        .background(Color(red: 0.97, green: 0.97, blue: 0.97))
    }
    
    struct StartingPoint_Previews: PreviewProvider {
        static var previews: some View {
            StartingPoint()
        }
    }
}


//
//  MapNavigation.swift
//  Binus Xplore
//
//  Created by Victor Chandra on 17/07/23.
//

import Foundation
import SwiftUI

struct MapNavigation: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack {
                Rectangle() //BG Atas
                    .foregroundStyle(Color("MainColor"))
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 500)
                    .frame(height: 360.0)
                    .edgesIgnoringSafeArea(.all)
              
                    
                    
                    VStack (alignment: .leading, spacing:15){
                        
                        Text("Trip Summary")
                            .font(.system(size: 30))
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                            .offset(x:80, y:-10)
                        
                        HStack (spacing:35){
                            
                            Text("From:")
                                .fontWeight(.medium)
                                .font(.system(size:16))
                            
                            HStack (spacing:15){
                                Text ("Lobby")
                                    .fontWeight(.medium)
                                    .font(.system(size:16))
                                
                                
                                Image("guideIcon")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20)
                                    .clipped()
                                
                                Text("Auditorium")
                                    .fontWeight(.medium)
                                    .font(.system(size:16))
                                    .lineSpacing(22)
                                
                            }
                        }.offset(x:84, y:-10)
                        
                        ScrollView{
                            
                            ZStack{
                                Rectangle()
                                    .frame(width: 500, height: 500)
                                    .foregroundColor(.clear)
                                
                                VStack(alignment: .leading){
                                    
                                    VStack{
                                        Text("Start (Lobby)")
                                            .font(.system(size:16))
                                            .fontWeight(.medium)
                                        
                                        HStack (alignment: .center){
                                            VStack {
                                                ForEach(0..<7) { _ in
                                                    Rectangle()
                                                        .frame(width: 4, height: 4)
                                                        .foregroundColor(.black)
                                                }
                                            }
                                            Text ("80 meters walk")
                                                .font(.system(size:12))
                                        } .offset(x:20)
                                    }
                                    
                                    VStack (alignment: .leading){
                                        Text("BCA BINUS")
                                            .fontWeight(.regular)
                                        
                                        ZStack{
                                            RoundedRectangle(cornerRadius: 37)
                                                .frame(width: 64.0, height: 24)
                                                .foregroundColor(Color(red: 217/255, green: 217/255, blue: 217/255))
                                            
                                            Text ("Elevator")
                                                .font(.system(size:12))
                                        }
                                    }
                                    HStack {
                                        VStack {
                                            Rectangle()
                                                .frame(width: 4, height: 90)
                                                .foregroundColor(.black)
                                        }
                                        
                                        Text ("20 meters")
                                            .font(.system(size:12))
                                        
                                    } .offset(x:20)
                                    
                                    VStack (alignment: .leading){
                                        Text("Inner Balcony Floor 5")
                                            .fontWeight(.regular)
                                        
                                        ZStack{
                                            RoundedRectangle(cornerRadius: 37)
                                                .frame(width: 98.0, height: 24)
                                                .foregroundColor(Color(red: 217/255, green: 217/255, blue: 217/255))
                                            
                                            Text ("Right Corridor")
                                                .font(.system(size:12))
                                            //                                            .padding(20)
                                        }
                                    }
                                    
                                    HStack {
                                        VStack {
                                            ForEach(0..<7) { _ in
                                                Rectangle()
                                                    .frame(width: 4, height: 4)
                                                    .foregroundColor(.black)
                                            }
                                        }
                                        Text ("10 meters walk")
                                            .font(.system(size:12))
                                        
                                        Text ("{Right Corridor}")
                                            .font(.system(size:12))
                                            .italic()
                                        
                                        
                                    } .offset(x:20)
                                    
                                    //                                frame(maxWidth:.infinity)
                                    
                                    //                                    .offset(x:-25,y:-15)
                                    
                                    Text("Auditorium")
                                        .fontWeight(.medium)
                                    
                                    
                                    //
                                    
                                    
                                    
                                } .offset(x:-70, y:-25)
                            }
                        }
                        
                    }
                    
                    
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(width: 418.0, height: 200.0)
                        .offset(y:205)
                    
                    
                    HStack {
                        Spacer()
                        
                        Button(action:{}) {
                            Text("Let's Go!")
                                .font(Font.custom("SF Pro Display", size: 22)
                                    .weight(.medium))
                                .foregroundColor(.white)
                                .frame(width: 354, height: 54)
                                .background(Color("MainColor"))
                                .cornerRadius(15)
                                .edgesIgnoringSafeArea(.all)
                            
                        }
                        .padding()
                        .edgesIgnoringSafeArea(.bottom)
                        .offset(y:145)
                        
                        Spacer()
                    }
                    
                    
                }
                
            
        .navigationBarItems(
            leading: Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "chevron.left")
                    .foregroundColor(Color.black)
                    .frame(width: 40.0, height: 40.0)
                    .font(.system(size: 12).weight(.semibold))
                    .background(Color.white)
                    .clipShape(Circle())
                
            }
                .padding(.top, 15.0),
            trailing: Text("Navigation")
                .foregroundStyle(Color("AppleText"))
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.trailing, 122.0)
                .padding(.top, 16)
        )
        }.navigationBarBackButtonHidden(true)
    
    }
    
    var backButton: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image(systemName: "chevron.left")
                    .foregroundColor(.black)
                    .font(.system(size: 12).weight(.semibold))
                    .padding(16)
                    .background(Color.white)
                    .clipShape(Circle())
                    .offset(x: 13, y: 18)
                
            }
        }
        .buttonStyle(BorderlessButtonStyle())
    }
}
struct MapNavigation_Previews: PreviewProvider {
    static var previews: some View {
        MapNavigation()
    }
}


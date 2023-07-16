//
//  Profile.swift
//  Binus Xplore
//
//  Created by Jessica Lynn on 12/07/23.
//

import Foundation
import SwiftUI

struct Profile: View{
    var body: some View{
        NavigationView{
            VStack{
                HStack{
                    Text("Profile")
                        .font(.system(size: 34).weight(.bold))
                        .padding(.top, 10)
                        .padding(.bottom, -1)
                        .padding(.leading, 30)
                    Spacer()
                }
                Image("SunibAnggrek")
                                .resizable()
                                .frame(width: 224, height: 179)
                                .clipShape(Circle())
                HStack{
                    Text("Maya Rahayu")
                        .font(.title)
                        .fontWeight(.semibold)
                        .font(.system(size:30))
                    Button {
            
                    } label: {
                        Image(systemName:"pencil")
                            .foregroundColor(Color.gray)

                    }
                }.offset(y:20)
                VStack (spacing:35){
                    VStack(alignment: .leading, spacing:25){
                                Text("Biodata")
                                  .font(
                                    Font.custom("SF Pro", size: 15)
                                      .weight(.semibold)
                                  )
                                  .kerning(0.374)
                                  .foregroundColor(Color(red: 0.32, green: 0.31, blue: 0.31))
                                
                                HStack{
                                    
                                    Image(systemName: "figure.roll")
                                    
                                    Text("Special Needs")
                                      .font(Font.custom("SF Pro", size: 14))
                                      .kerning(0.374)
                                      .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59)).padding(16.5)

                                    Spacer()
                                    
                                    Button {
                            
                                    } label: {
                                        Image("dropdown")
                                            .resizable()
                                            
                                    }
                                    .scaledToFit()
                                    
                                    .frame(width: 30, height: 30)
                                    
                                       
                                }
                                .padding(.horizontal, 18)
                                .padding(.vertical, 16.5)
                                .frame(width: 340, height: 50, alignment: .leading)
                                .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                                .cornerRadius(10)
                                .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                .stroke(.black, lineWidth: 1)
                                )
                                
                                HStack{
                                    
                                    Image(systemName: "phone.fill")
                                    
                                    Text("081234567819")
                                      .font(Font.custom("SF Pro", size: 14))
                                      .kerning(0.374)
                                      .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59)).padding(16.5)
                                }
                                .padding(.horizontal, 18)
                                .padding(.vertical, 16.5)
                                .frame(width: 340, height: 50, alignment: .leading)
                                .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                                .cornerRadius(10)
                                .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                .stroke(.black, lineWidth: 1)
                                )
                            }
                            
                            // perlu space betwen keduanya
                            
                    VStack(alignment: .leading, spacing:25){
                        
                                Text("Emergency Contact")
                                  .font(
                                    Font.custom("SF Pro", size: 15)
                                      .weight(.semibold)
                                  )
                                  .kerning(0.374)
                                  .foregroundColor(Color(red: 0.32, green: 0.31, blue: 0.31))
                                
                                HStack{
                                    
                                    Image(systemName: "phone.fill")
                                    
                                    Text("081234567819")
                                      .font(Font.custom("SF Pro", size: 14))
                                      .kerning(0.374)
                                      .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59)).padding(16.5)
                                    
                                    Text("Assistant")
                                      .font(Font.custom("SF Pro", size: 14))
                                      .kerning(0.374)
                                      .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                                      .offset(x:70)
                                      
                                     
                                }
                                .padding(.horizontal, 18)
                                .padding(.vertical, 16.5)
                                .frame(width: 340, height: 50, alignment: .leading)
                                .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                                .cornerRadius(10)
                                .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                .stroke(.black, lineWidth: 1)
                                )
                                
                                HStack{
                                    
                                    Image(systemName: "phone.fill")
                                    
                                    Text("081234567819")
                                      .font(Font.custom("SF Pro", size: 14))
                                      .kerning(0.374)
                                      .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59)).padding(16.5)
                                    
                                    Text("Dad")
                                      .font(Font.custom("SF Pro", size: 14))
                                      .kerning(0.374)
                                      .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                                      .offset(x:85)

                                    Spacer()
                                }
                                .padding(.horizontal, 18)
                                .padding(.vertical, 16.5)
                                .frame(width: 340, height: 50, alignment: .leading)
                                .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                                .cornerRadius(10)
                                .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                .stroke(.black, lineWidth: 1)
                                )
                            }
                }.offset(y:41)
                
                VStack {
                    Spacer()
                    ZStack{
                        Rectangle()
                            .fill(.white)
                            .frame(height: 94)
                        HStack{
                            NavigationLink(destination: Bookmark()){ // Later Change to Bookmark
                                Image(systemName: "bookmark")
                                    .font(Font.custom("SF Pro", size: 40))
                                    .foregroundColor(Color(red: 0.53, green: 0.73, blue: 1))
                            }
                            Spacer()
                            NavigationLink(destination: HomeView()){
                                ZStack{
                                    Circle()
                                        .fill(Color(red: 0.53, green: 0.73, blue: 1))
                                        .frame(width: 76, height: 76)
                                        .offset(y:-25)
                                        .overlay(
                                            Circle().stroke(Color.white, lineWidth: 7).offset(y:-25)
                                        )
                                    Image(systemName: "house.fill")
                                        .font(Font.custom("SF Pro", size: 47))
                                        .foregroundColor(.white)
                                        .offset(y:-28)
                                }
                                
                            }
                            Spacer()
                            
//                            NavigationLink(destination: Onboarding2()){
                                Image(systemName: "person.fill")
                                    .font(Font.custom("SF Pro", size: 40))
                                    .foregroundColor(Color(red: 0, green: 0.29, blue: 0.68))
//                            }
                        }.padding(.horizontal, 74.0)
                    }
                }
                .edgesIgnoringSafeArea(.bottom)
                .frame(maxHeight: .infinity)
            }
        }
        .background(Color(red: 0.97, green: 0.97, blue: 0.97))
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct Profile_Previews: PreviewProvider{
    static var previews: some View{
        Profile()
    }
}

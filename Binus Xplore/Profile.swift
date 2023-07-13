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
                Image("404")
                    .padding(.top, 150.0)
                Text("Dummy Page")
                //navbar
                VStack{
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

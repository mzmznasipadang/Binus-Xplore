//
//  HomeView.swift
//  Binus Xplore
//
//  Created by Victor Chandra on 06/07/23.
//

import Foundation
import SwiftUI
import CoreData
import UIKit


struct HomeView: View {
    @State var searchText = ""
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    struct Constants {
        static let Primary: Color = Color(red: 0.02, green: 0.09, blue: 0.42)
    }
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Text("Explore").font(.system(size: 34).weight(.bold))
                    Text("BINUS").font(.system(size: 34).weight(.bold)).foregroundColor(Color("MainColor"))
                    Spacer()
                }.padding(.top, 10).padding(.bottom, -1)
                    .padding(.leading, 30)
                SearchBar()
                HStack{
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(red: 0.02, green: 0.09, blue: 0.42))
                                .frame(width: 58, height: 58)
                            Image(systemName: "briefcase.fill").frame(width: 55, height: 55).foregroundColor(.white).font(.system(size: 30))
                        }
                        Text("Office")
                            .font(.system(size: 13))
                            .foregroundStyle(.primary)
                            .padding(.top, -2)
                    }
                    Spacer()
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(red: 0.02, green: 0.09, blue: 0.42))
                                .frame(width: 58, height: 58)
                            Image(systemName: "books.vertical.fill")
                                .frame(width: 46.0, height: 46.0)
                                .foregroundStyle(.white).font(.system(size: 30))
                        }
                        Text("Class")                   .font(.system(size: 13))
                            .foregroundStyle(.primary)
                            .padding(.top, -2)
                    }
                    Spacer()
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(red: 0.02, green: 0.09, blue: 0.42))
                                .frame(width: 58, height: 58)
                            Image(systemName: "pc")
                                .frame(width: 46.0, height: 46.0)
                                .foregroundStyle(.white).font(.system(size: 30))
                        }
                        Text("Labs")                    .font(.system(size: 13))
                            .foregroundStyle(.primary)
                            .padding(.top, -2)
                    }
                    Spacer()
                    VStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(red: 0.02, green: 0.09, blue: 0.42))
                                .frame(width: 58, height: 58)
                            Image(systemName: "person.2.fill")
                                .frame(width: 46.0, height: 46.0)
                                .foregroundStyle(.white)
                                .font(.system(size: 30))
                        }.padding(.bottom, 7)
                        VStack {
                            Text("Public")
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.primary)
                                .font(.system(size: 13))
                                .padding(.top, -2)
                            Text("Facility")
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.primary)
                                .font(.system(size: 13))
                        }
                        .frame(height: 8) // Add a fixed height to the VStack
                    }
                    
                }.padding(.trailing, 53).padding(.leading, 53).padding(.top, 8)
                HStack{
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("ColorIcon2"))
                                .frame(width: 58, height: 58)
                            Image(systemName: "building.fill").frame(width: 55, height: 55).foregroundColor(.white).font(.system(size: 30))
                        }
                        Text("A Building")
                            .font(.system(size: 13))
                            .foregroundStyle(.primary)
                            .padding(.top, -2)
                    }
                    Spacer()
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("ColorIcon2"))
                                .frame(width: 58, height: 58)
                            Image(systemName: "building.fill")
                                .frame(width: 46.0, height: 46.0)
                                .foregroundStyle(.white).font(.system(size: 30))
                        }
                        Text("B Building")                   .font(.system(size: 13))
                            .foregroundStyle(.primary)
                            .padding(.top, -2)
                    }
                    Spacer()
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("ColorIcon2"))
                                .frame(width: 58, height: 58)
                            Image(systemName: "building.fill")
                                .frame(width: 46.0, height: 46.0)
                                .foregroundStyle(.white).font(.system(size: 30))
                        }
                        Text("C Building")               .font(.system(size: 13))
                            .foregroundStyle(.primary)
                            .padding(.top, -2)
                    }
                    Spacer()
                    VStack{
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("ColorIcon3"))
                                .frame(width: 58, height: 58)
                            Image(systemName: "cup.and.saucer.fill")
                                .frame(width: 46.0, height: 46.0)
                                .foregroundStyle(.white).font(.system(size: 30))
                        }
                        Text("F & B")
                            .font(.system(size: 13))
                            .foregroundStyle(.primary)
                            .padding(.top, -2)
                    }
                }.padding(.trailing, 53).padding(.leading, 53).padding(.top, 8)
                Divider()
                    .background(Color.gray).padding(.horizontal, 20).frame(height: 10)
                HStack{
                    Text("Latest Events").font(.system(size: 24).weight(.bold))
                    Spacer()
                }.padding(.leading, 30)
                ScrollView(showsIndicators: false) {
                    LazyVGrid(columns: [GridItem(.flexible())]) {
                        ForEach(0..<5) { index in
                            BoxView()
                        }
                    }
                    .padding()
                }.frame(height: 290)
                Spacer()
                //            navbar(selectedTab: .home)
                VStack{
                    Spacer()
                    ZStack{
                        Rectangle()
                            .fill(.white)
                            .frame(height: 94)
                        HStack{
                            NavigationLink(destination: BookmarkMessy()){ // Later Change to Bookmark
                                Image(systemName: "bookmark")
                                    .font(Font.custom("SF Pro", size: 40))
                                    .foregroundColor(Color(red: 0.53, green: 0.73, blue: 1))
                            }
                            Spacer()
                            NavigationLink(destination: HomeView()){
                                ZStack{
                                    Circle()
                                        .fill(Color(red: 0, green: 0.29, blue: 0.68))
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
                            
                            NavigationLink(destination: Profile()){
                                Image(systemName: "person")
                                    .font(Font.custom("SF Pro", size: 40))
                                    .foregroundColor(Color(red: 0.53, green: 0.73, blue: 1))
                            }
                        }.padding(.horizontal, 74.0)
                    }
                }
                .edgesIgnoringSafeArea(.bottom)
                .frame(maxHeight: .infinity)
                
            }
            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct BoxView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .frame(width: 350, height: 150)
                .overlay(
                    RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 0.2)
                )
            HStack(spacing: 30){
                Image("Samsat")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 120, height: 130)
                    .clipShape(RoundedRectangle(cornerRadius: 20))

                VStack(alignment: .leading, spacing: 5){
                    Text("Event Title").font(.system(size: 18).weight(.semibold))
                    HStack{
                        Image(systemName: "location").font(Font.custom("SF Pro", size: 12))
                        Text("Location")
                            .font(
                                Font.custom("SF Pro Display", size: 12)
                                    .weight(.medium)
                            )
                            .kerning(0.374)
                    }
                    HStack{
                        Image(systemName: "calendar").font(Font.custom("SF Pro", size: 12))
                        Text("Date")
                            .font(
                                Font.custom("SF Pro Display", size: 12)
                                    .weight(.medium)
                            )
                            .kerning(0.374)
                    }
                    HStack{
                        Image(systemName: "clock").font(Font.custom("SF Pro", size: 12))
                        Text("Time")
                            .font(
                                Font.custom("SF Pro Display", size: 12)
                                    .weight(.medium)
                            )
                            .kerning(0.374)
                    }
                }
            }
            .padding(.leading, -50.0)
            
        }.padding(.horizontal, 20.0)
    }
}

struct SearchBar: View {
    @State private var searchText = ""
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass").foregroundColor(.gray)
            TextField("Where are you heading to?", text: $searchText)
                .font(.system(size: 15))
            Button(action: {
                // action
            }) {
                Image(systemName: "mic.fill")
                    .foregroundColor(.gray)
            }
        }
        .padding(.horizontal, 11)
        .padding(.vertical, 6)
        .background(Color(.systemGray6))
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


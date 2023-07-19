

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
    @State private var selectedItem: pinpoint?
    @State private var navigate = false

    @EnvironmentObject var globalData: GlobalData

    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Text("Explore").font(.system(size: 34).weight(.bold))
                        .foregroundStyle(Color("Apple"))
                    Text("BINUS").font(.system(size: 34).weight(.bold)).foregroundColor(Color("MainColor"))
                    Spacer()
                }.padding(.top, 10).padding(.bottom, -1)
                    .padding(.leading, 30)
                SearchBar().environmentObject(globalData)
                HStack{
                    NavigationLink(destination: OfficePage(searchText: "Office").environmentObject(globalData)){
                        VStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("ColorIcon1"))
                                    .frame(width: 58, height: 58)
                                Image(systemName: "briefcase.fill").frame(width: 55, height: 55).foregroundColor(.white).font(.system(size: 30))
                            }
                            Text("Office")
                                .font(.system(size: 13))
                                .foregroundStyle(.primary)
                                .foregroundColor(.black)
                                .padding(.top, -2)
                        }
                    }
                    Spacer()
                    NavigationLink(destination: OfficePage(searchText: "Class").environmentObject(globalData)){
                        VStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("ColorIcon1"))
                                    .frame(width: 58, height: 58)
                                Image(systemName: "books.vertical.fill")
                                    .frame(width: 46.0, height: 46.0)
                                    .foregroundStyle(.white).font(.system(size: 30))
                            }
                            Text("Class")
                                .font(.system(size: 13))
                                .foregroundStyle(.primary)
                                .foregroundColor(.black)
                                .padding(.top, -2)
                        }
                    }
                    Spacer()
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("ColorIcon1"))
                                .frame(width: 58, height: 58)
                            Image(systemName: "desktopcomputer")
                                .frame(width: 46.0, height: 46.0)
                                .foregroundStyle(.white).font(.system(size: 30))
                        }
                        Text("Labs")
                            .font(.system(size: 13))
                            .padding(.top, -2)
                    }
                    Spacer()
                    VStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("ColorIcon1"))
                                .frame(width: 58, height: 58)
                            Image(systemName: "person.2.fill")
                                .frame(width: 46.0, height: 46.0)
                                .foregroundStyle(.white)
                                .font(.system(size: 30))
                        }.padding(.bottom, 7)
                        VStack {
                            Text("Public")
                                .multilineTextAlignment(.center)
                                .font(.system(size: 13))
                                .padding(.top, -2)
                            Text("Facility")
                                .multilineTextAlignment(.center)
                                .font(.system(size: 13))
                        }
                        .frame(height: 8)
                    }
                    
                }.padding(.trailing, 53)
                    .padding(.leading, 53)
                    .padding(.top, 8)
                HStack{
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("ColorIcon2"))
                                .frame(width: 58, height: 58)
                            Image(systemName: "building.fill").frame(width: 55, height: 55).foregroundColor(.white).font(.system(size: 30))
                        }
                        Text("A Tower")
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
                        Text("B Tower")                   .font(.system(size: 13))
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
                        Text("C Tower")               .font(.system(size: 13))
                            .foregroundStyle(.primary)
                            .padding(.top, -2)
                    }
                    Spacer()
                    NavigationLink(destination: OfficePage(searchText: "F & B").environmentObject(globalData)){
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
                                .foregroundColor(.black)
                                .padding(.top, -2)
                        }
                    }
                }.padding(.trailing, 53)
                    .padding(.leading, 53)
                    .padding(.top, 8)
                Divider()
                    .background(Color.gray)
                    .padding(.horizontal, 20)
                    .frame(height: 10)
                HStack{ //Latest Events
                    Text("Latest Events").font(.system(size: 24).weight(.bold))
                    Spacer()
                }.padding(.leading, 30)
                
                
                ScrollView {
                    VStack(spacing: 8) {
                        ForEach(pinpoints.filter { $0.category.localizedCaseInsensitiveContains("Event") }, id: \.id) { item in
                            Button(action: {
                                self.navigate = true
                                self.selectedItem = item
                            }) {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color("AppleText"))
                                        .frame(width: 350, height: 150)
                                    HStack(spacing: 30){
                                        Image(item.images.first ?? "default_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 120, height: 120)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                        
                                        VStack(alignment: .leading, spacing: 5){
                                            Text(item.name)
                                                .font(.system(size: 18)
                                                    .weight(.semibold))
                                            HStack{
                                                Image(systemName: "location")
                                                    .font(.system(size: 14))
                                                Text(item.floor + ", " + item.building)
                                                    .font(.system(size: 12))
                                                    .fontWeight(.medium)
                                                //Hati Hati Sering Crash
                                            }
                                            HStack{
                                                Image(systemName: "calendar")
                                                                                    .font(.system(size: 14))
                                                Text({ () -> String in
                                                    let date = Date()
                                                    let formatter = DateFormatter()
                                                    formatter.dateStyle = .long
                                                    return formatter.string(from: date)
                                                }())
                                                                                .font(.system(size: 12))
                                                                                .fontWeight(.medium)
                                                                                .kerning(0.374)
                                            }
                                            HStack{
                                                Image(systemName: "clock")
                                                    .font(.system(size: 12))
                                                    .fontWeight(.medium)
                                                Text(item.time)
                                                    .font(.system(size: 12))
                                                    .fontWeight(.medium)
                                                    .kerning(0.374)
                                            }
                                        }
                                        .padding(.leading, 15.0)
                                        
                                    }
                                    .padding(.leading, -10.0)
                                    
                                }
                                .padding(.horizontal, 20.0)
                                .foregroundColor(Color.black)
                            }
                            NavigationLink(destination: informationCardView(item: selectedItem).environmentObject(globalData), isActive: $navigate) { EmptyView() }
                        }
                    }
                    .padding()
                    .offset(y:-20)
                    
                    
                    
                    
                }.frame(height: 290)//ScrollView
                Spacer()
                VStack{ //NavBar (OTW Ganti)
                    Spacer()
                    ZStack{
                        Rectangle()
                            .fill(Color("AppleText"))
                            .frame(height: 94)
                        HStack{
                            NavigationLink(destination: Bookmark()){
                                Image(systemName: "bookmark")
                                    .font(Font.custom("SF Pro", size: 40))
                                    .foregroundColor(Color(red: 0.53, green: 0.73, blue: 1))
                            }
                            Spacer()
//                            NavigationLink(destination: HomeView()){
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
                                
//                            }
                            Spacer()
                            
                            NavigationLink(destination: Profile().environmentObject(globalData)){
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
            .background(Color("WhiteBG"))
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}


struct SearchBar: View {
    @State private var searchText = ""
    @State private var isSearching = false
    @EnvironmentObject var globalData: GlobalData
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass").foregroundColor(.gray)
            TextField("Where are you heading to?", text: $searchText, onCommit: {
                performSearch()
            })
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
        
        NavigationLink(
            destination: SearchResult(searchText: searchText).environmentObject(globalData), isActive: $isSearching
        ){
            EmptyView()
        }.hidden()
    }
    private func performSearch(){
        if !searchText.isEmpty{
            isSearching = true
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(GlobalData())
    }
}

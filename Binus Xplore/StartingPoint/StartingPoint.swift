//
//  ContentView.swift
//  StartingPoint
//
//  Created by Clarissa  on 10/07/23.
//

import SwiftUI

struct StartingPoint: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var globalData: GlobalData
    @State private var inputStarting = ""
    @State private var isSearching = false
    @State private var showInformationCard = false
    @State private var navigate = false
    // Color
    //    struct Constants {
    //    static let Primary: Color = Color(red: 0, green: 0.29, blue: 0.68)
    //    }
    
    // History List
    var historyList: [History] = Histories.historyL
    
    var body: some View {
        NavigationView{
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
                                            SearchBar(inputStarting: $inputStarting)
                                            // search bar
                                            
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
                        .offset(y: 154)
                        
                        
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
                        .padding(.top)
                        .frame(width: 355, height: 285)
                        .cornerRadius(20)
                        
                        
                    }
                    
                    //                Image("StartPointBG")
                    
                }
                
                //            Image("StartPointBG")
                
                Button(action: {
                    // Set Starting Point
                    //ke search results
                    self.navigate = true
                }) {
                    Text("Set Starting Point")
                        .font(.system(size: 20).weight(.medium))
                        .foregroundColor(.white)
                        .frame(width: 354, height: 50)
                        .background(Color("MainColor"))
                        .cornerRadius(15)
                        .edgesIgnoringSafeArea(.all)
                    
                }
                .offset(y:65)
                .padding()
                //masukkin search bar
                .background(
                    NavigationLink(destination: SearchResult2(searchText: inputStarting), isActive: $navigate) {
                        EmptyView()
                    }
                        .hidden()
                )
                
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
            
            .offset(y: -60)
            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
        }.navigationBarBackButtonHidden(true)
    }
    
    struct SearchBar: View {
        @Binding var inputStarting: String
        @State private var searchText = ""
        @State private var isSearching = false
        var body: some View {
            HStack {
                Image(systemName: "magnifyingglass").foregroundColor(.gray)
                TextField("Where are you heading to?", text: $inputStarting, onCommit: {
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
                destination: SearchResult2(searchText: searchText), isActive: $isSearching
            ){
                EmptyView()
            }.hidden()
        }
        private func performSearch(){
            if !inputStarting.isEmpty{
                isSearching = true
                searchText = inputStarting
            }
        }
    }
    
    struct StartingPoint_Previews: PreviewProvider {
        static var previews: some View {
            StartingPoint().environmentObject(GlobalData())
        }
    }
}


//
//  SearchResult.swift
//  Binus Xplore
//
//  Created by Aaron Alexander on 12/07/23.
//

import Foundation
import SwiftUI

struct pinpoint: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let images: [String]
    let status: Bool
    let time: String
    let description: String
    let isSaved: Bool
    let floor: String
    let building: String
}


//struct Constants {
//        static let Primary: Color = Color(red: 0, green: 0.29, blue: 0.68)
//    }
struct SearchResult: View {
    let searchText: String
    let items: [pinpoint] = [
        pinpoint(name: "Item 1", images: ["404"], status: true, time: "10:00 - 11.00", description: "This is item 1", isSaved: false, floor: "Floor 2", building: "C Tower"),
        pinpoint(name: "Item 112", images: ["404"], status: false, time: "11:00 - 12.00", description: "This is item 2", isSaved: true, floor: "Floor 3", building: "C Tower"),
        pinpoint(name: "Item 113", images: ["404"], status: false, time: "12:00 - 13.00", description: "This is item 3", isSaved: true, floor: "Floor 4", building: "B Tower"),
        pinpoint(name: "Item 145", images: ["404"], status: true, time: "13:00 - 14.00", description: "This is item 4", isSaved: true, floor: "Floor 4", building: "C Tower"),
        pinpoint(name: "Item 125", images: ["404"], status: false, time: "14:00 - 15.00", description: "This is item 5", isSaved: true, floor: "Floor 5", building: "B Tower"),
        // ... add more items as needed
    ]

    @Environment(\.presentationMode) var presentationMode
    @State private var navigate = false
    var body: some View {
        NavigationView {
            
            VStack {
                Spacer(minLength: 100)
                HStack(){
                    Button(action: {
                        
                    }) {
                        Label("Filter By", systemImage: "line.3.horizontal.decrease.circle.fill")
                            .font(.body)
                            .foregroundColor(Color.white)

                            .padding(.horizontal, 10.0)
                            .padding(.vertical, 8)
                            .background(Color("MainColor"))
                            .cornerRadius(12)
                            .offset(x:5)
                        



                            
                    }
                    .padding(.leading, 5)
                    Spacer()
                }
                .padding()
                
                ScrollView {
                    VStack(spacing: 8) {
                        ForEach(items.filter { $0.name.localizedCaseInsensitiveContains(searchText) }, id: \.id) { item in
                            Button(action: {
                                self.navigate = true
                            }) {
                                RoundedRectangle(cornerRadius: 16)
                                    .foregroundColor(.white)
                                    .frame(width: 352.0, height: 169.0)
                                    .overlay(
                                        HStack(spacing: 8) {
                                            Image(item.images.first ?? "default_image")
                                                .resizable()
                                                .padding()
                                                .frame(width: 138.0, height: 138.0)
//                                                .foregroundColor(.white)
//                                                .background(Color("MainColor"))
                                                .cornerRadius(8)
                                                .offset(x:17)
                                            
                                            VStack(alignment: .leading, spacing: 4) {
                                                Text(item.name)
                                                    .font(.system(size: 24))
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.black)
                                                    .padding(.leading)
                                                    
                                                
                                                
                                                HStack{
                                                    Image(systemName: "location")
                                                        .foregroundColor(.black)
                                                        .padding(.leading)
                                                    
                                                    Text(item.floor + ", " + item.building)
                                                        .foregroundColor(.black)
                                                        .font(.system(size: 16))
                                                        .lineLimit(1)
                                                        
            
                                                }
                                                
                                                HStack{
                                                    Image(systemName: "clock")
                                                        .foregroundColor(.black)
                                                        .padding(.leading)
                                                    
                                                    Text(item.time)
                                                        .foregroundColor(.black)
                                                        .font(.system(size: 16))
                                                        .lineLimit(1)
                                                        .frame(width: 95.0)
                                                        
                                                }.offset(y:5)
                                                
                                                
                                            }.offset(x:7)
                                                .frame(width: 165, height: 300, alignment: .leading)
                        
                                            
                                            Image(systemName: "chevron.right")
                                                .foregroundColor(.black)
                                                .padding()
                                            
                                        }
                                            .padding(.horizontal)
                                        
                                    )
                            }
                            NavigationLink(destination: informationCardView(), isActive: $navigate) { EmptyView() }
                        }
                    }
                    .padding()
                    .offset(y:-20)
                    
                    
                    
                    
                }
            }
            .background(Color(hue: 0, saturation: 0, brightness: 0.97))
            .edgesIgnoringSafeArea(.vertical)
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
                trailing: Text("Search Result")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.trailing, 74.0)
                    .padding(.top, 19)
            )
        }.navigationBarBackButtonHidden(true)
    }
}

struct SearchResult_Previews: PreviewProvider {
    static var previews: some View {
        SearchResult(searchText: "Item")
    }
}


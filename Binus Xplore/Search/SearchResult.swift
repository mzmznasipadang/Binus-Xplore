//
//  SearchResult.swift
//  Binus Xplore
//
//  Created by Aaron Alexander on 12/07/23.
//

import Foundation
import SwiftUI

//struct Constants {
//        static let Primary: Color = Color(red: 0, green: 0.29, blue: 0.68)
//    }
struct SearchResult: View {
    let items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]
    
    var body: some View {
        NavigationView {
            
            VStack {
                Spacer(minLength: 100)
                HStack(){
                    Button(action: {
                        
                    }) {
                        Label("Filter By", systemImage: "line.3.horizontal.decrease.circle.fill")
                            .font(.body)
                            .foregroundColor(.white)
                            .padding(.horizontal, 30)
                            .padding(.vertical, 8)
                            .background(Constants.Primary)
                            .cornerRadius(12)


                    }
                    Spacer()
                    
                }
                .padding()
                
                ScrollView {
                    VStack(spacing: 20) {
                        ForEach(items, id: \.self) { item in
                            Button(action: {
                                
                            }) {
                                RoundedRectangle(cornerRadius: 16)
                                    .foregroundColor(.white)
                                    .frame(width: 352.0, height: 169.0)
                                    .overlay(
                                        HStack(spacing: 8) {
                                            Image(systemName: "photo")
                                                .resizable()
                                                .padding()
                                                .frame(width: 138.0, height: 138.0)
                                                .foregroundColor(.white)
                                                .background(Constants.Primary)
                                                .cornerRadius(8)
                                            
                                            VStack(alignment: .leading, spacing: 4) {
                                                Text("First Line")
                                                    .font(.title)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.black)
                                                    .padding(.leading)

                                                Text("Second Line")
                                                    .foregroundColor(.black)
                                                    .padding(.leading)
                                                Text("Third Line")
                                                    .foregroundColor(.black)
                                                    .padding(.leading)
                                                

                                         
                                            }
                                            
                                            Spacer()
                                            
                                            Image(systemName: "chevron.right")
                                                .foregroundColor(.black)
                                                .padding()
                                                
                                            
                                        }
                                            
                                    )
                            }
                            
                            
                            
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
                    print("button pressed")
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color.black)
                        .frame(width: 40.0, height: 40.0)
                        .background(Color.white)
                        .clipShape(Circle())
                       
                },
                trailing: Text("Search Result")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.trailing, 74.0)
            )
        }
    }
}

struct SearchResult_Previews: PreviewProvider {
    static var previews: some View {
        SearchResult()
    }
}


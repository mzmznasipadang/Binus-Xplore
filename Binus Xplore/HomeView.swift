//
//  HomeView.swift
//  Binus Xplore
//
//  Created by Victor Chandra on 06/07/23.
//

import Foundation
import SwiftUI
import CoreData


struct HomeView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    struct Constants {
        static let Primary: Color = Color(red: 0.02, green: 0.09, blue: 0.42)
    }
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    HStack(alignment: .top, spacing: 25){
                        VStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.blue)
                                    .frame(width: 64, height: 64)
                                Image(systemName: "briefcase.fill")
                                    .frame(width: 46.0, height: 46.0)
                                    .foregroundStyle(.white)
                            }
                            Text("Office")
                                .foregroundStyle(.primary)
                            //                            .font(.title3)
                                .font(Font.custom("SF Pro", size: 12))
                                .padding()
                        }
                        
                        VStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.blue)
                                    .frame(width: 64, height: 64)
                                Image(systemName: "books.vertical.fill")
                                    .frame(width: 46.0, height: 46.0)
                                    .foregroundStyle(.white)
                            }
                            Text("Class")
                                .foregroundStyle(.primary)
                            //                            .font(.title3)
                                .font(Font.custom("SF Pro", size: 12))
                                .padding()
                        }
                        VStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.blue)
                                    .frame(width: 64, height: 64)
                                Image(systemName: "pc")
                                    .frame(width: 46.0, height: 46.0)
                                    .foregroundStyle(.white)
                            }
                            Text("Labs")
                                .foregroundStyle(.primary)
                            //                            .font(.title3)
                                .font(Font.custom("SF Pro", size: 12))
                                .padding()
                        }
                        VStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.blue)
                                    .frame(width: 64, height: 64)
                                Image(systemName: "person.2.fill")
                                    .frame(width: 46.0, height: 46.0)
                                    .foregroundStyle(.white)
                            }
                            Text("Public\nFacility")
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.primary)
                            //                            .font(.subheadline)
                                .font(Font.custom("SF Pro", size: 12))
                                .padding()
                        }
                    }
                    HStack(alignment: .top, spacing: 25){
                        VStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.red)
                                    .frame(width: 64, height: 64)
                                Image(systemName: "building.fill")
                                    .frame(width: 46.0, height: 46.0)
                                    .foregroundStyle(.white)
                            }
                            Text("A Building")
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.primary)
                            //                            .font(.subheadline)
                                .font(Font.custom("SF Pro", size: 12))
                                .padding()
                        }
                        VStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.red)
                                    .frame(width: 64, height: 64)
                                Image(systemName: "building.fill")
                                    .frame(width: 46.0, height: 46.0)
                                    .foregroundStyle(.white)
                            }
                            Text("B Building")
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.primary)
                            //                            .font(.subheadline)
                                .font(Font.custom("SF Pro", size: 12))
                                .padding()
                        }
                        VStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.red)
                                    .frame(width: 64, height: 64)
                                Image(systemName: "building.fill")
                                    .frame(width: 46.0, height: 46.0)
                                    .foregroundStyle(.white)
                            }
                            Text("C Building")
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.primary)
                            //                            .font(.subheadline)
                                .font(Font.custom("SF Pro", size: 12))
                                .padding()
                        }
                        VStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.green)
                                    .frame(width: 64, height: 64)
                                Image(systemName: "cup.and.saucer.fill")
                                    .frame(width: 46.0, height: 46.0)
                                    .foregroundStyle(.white)
                            }
                            Text("F&B")
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.primary)
                            //                            .font(.subheadline)
                                .font(Font.custom("SF Pro", size: 12))
                                .padding()
                        }
                    }
                    
                }
                
                //batas content dan navbar
                
                VStack{
                    Spacer()
                    ZStack{
                        Rectangle()
                            .fill(.white)
                            .frame(height: 94)
                        HStack{
                            NavigationLink(destination: Bookmark()){
                                Image(systemName: "bookmark")
                                    .font(Font.custom("SF Pro", size: 40))
                                    .foregroundColor(Color(red: 0.53, green: 0.73, blue: 1))
                            }
                            Spacer()
                            //                        NavigationLink(destination: HomeView()){
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
                            //                        }
                            Spacer()
                            
                            NavigationLink(destination: Onboarding2()){
                                Image(systemName: "person")
                                    .font(Font.custom("SF Pro", size: 40))
                                    .foregroundColor(Color(red: 0.53, green: 0.73, blue: 1))
                            }
                        }.padding(.horizontal, 78.0)
                    }
                }
                .edgesIgnoringSafeArea(.bottom)
                .frame(maxHeight: .infinity)
            }
            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
            .navigationTitle("Explore BINUS")

            
        }
        .navigationBarBackButtonHidden(true)
    }
}
        
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

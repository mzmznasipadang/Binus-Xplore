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
    
    @State var selectedTab: Tab = .home
    
    var body: some View {
        VStack{
            HStack{
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
                        .font(.title3)
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
                        .font(.title3)
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
                        .font(.title3)
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
                    Text("Public Facility")
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.primary)
                        .font(.subheadline)
                        .padding()
                }
            }
            HStack{
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
                        .font(.subheadline)
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
                        .font(.subheadline)
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
                        .font(.subheadline)
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
                        .font(.subheadline)
                        .padding()
                }
            }
            Spacer()
            TabBar(selectedTab: $selectedTab)
        }.navigationTitle("Explore BINUS")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

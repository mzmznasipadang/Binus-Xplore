//
//  LandingPage.swift
//  Binus Xplore
//
//  Created by Victor Chandra on 05/07/23.
//

import Foundation
import SwiftUI
import CoreData

struct Constants {
    static let Primary: Color = Color(red: 0, green: 0.29, blue: 0.68)
}

struct LandingPage: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    var body: some View {
        
        NavigationView{
            VStack {
                VStack{
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 801, height: 517)
                            .background(
                                Image("Samsat2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 414, height: 500)
                                    .clipped()
                                    .brightness(-0.2)
                                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 60, height: 100)))
                            )
                        VStack (alignment: .leading){
                            Text("Welcome")
                                .font(Font.custom("SF Pro Display", size: 30))
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                            
                            Text("To Binus Xplore, one stop solution for your guide to Binus@Alam Sutera Main Campus!")
                                .font(Font.custom("SF Pro Display", size: 18))
                                .kerning(0.374)
                                .fontWeight(.medium)
                                .foregroundColor(Color.white)
                            .frame(width: 300, height: 70, alignment: .topTrailing)}
                    }.offset(y: -100)//;Spacer(minLength: 300)
                    
                    NavigationLink(destination: HomeView()) {
                        VStack(alignment: .leading) {
                            VStack (alignment: .leading){
                                Label("Login With Email", systemImage: "iphone.gen2")
                                    .foregroundColor(.white)
                                    .frame(width: 200, height: 30)
                                    .fontWeight(.medium)
                                    .padding()
                                    .background(Color(red: 0.62, green: 0.62, blue: 0.62))
                                    .cornerRadius(15)
                            }.offset(y: -80)
                        }
                    }.frame(width: 100, height: 50)
                    NavigationLink(destination: HomeView()){
                        Image(systemName: "person")
                            .font(Font.custom("SF Pro", size: 40))
                            .foregroundColor(Color(red: 0.53, green: 0.73, blue: 1))
                    }
                }
                Spacer()
            } .navigationBarBackButtonHidden(true)
        }.navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
    }
}

struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage()
    }
}

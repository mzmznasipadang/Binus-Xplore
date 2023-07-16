//
//  LandingPage.swift
//  Binus Xplore
//
//  Created by Victor Chandra on 05/07/23.
//

import Foundation
import SwiftUI
import CoreData //Soon Kepake

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
                                Image("SunibAnggrek")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 400, height: 500)
                                    .clipped()
                                    .brightness(-0.2)
                                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 60, height: 100)))
                            )
                        VStack (alignment: .leading){
                            Text("Welcome")
                                .font(.system(size: 40))
                                .foregroundColor(Color.white)
                                .fontWeight(.bold)
                            Text("To Binus Xplore, one stop solution for your guide to Binus@Alam Sutera Main Campus!")
                                .font(.system(size: 20))
                                .kerning(0.374)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                            .frame(width: 250, height: 100)}
                        .offset(y: 100)
                    }.offset(y: -100)//;Spacer(minLength: 300)
                    
                    HStack{
                        NavigationLink(destination: Loginpage()){
                            Label("Login With Email", systemImage: "iphone.gen2")
                                .foregroundColor(.white)
                                .frame(width: 200, height: 30)
                                .fontWeight(.medium)
                                .padding()
                                .background(Color(red: 0.62, green: 0.62, blue: 0.62))
                                .cornerRadius(15)
                        }
                    } //Login with mail
                    
                    HStack{
                        Label("Login With Apple", systemImage: "apple.logo")
                            .foregroundColor(Color("AppleText"))
                            .frame(width: 200, height: 30)
                            .fontWeight(.medium)
                            .padding()
                            .background(Color("Apple"))
                            .cornerRadius(15)
                    } //Login with Apple
                }
                Spacer()
            }.background(Color("WhiteBG"))
        }.navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
    }
}

struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage()
    }
}

//
//  LandingPage.swift
//  Binus Xplore
//
//  Created by Victor Chandra on 05/07/23.
//

import Foundation
import SwiftUI
import CoreData

struct LandingPage: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    struct Constants {
        static let Primary: Color = Color(red: 0, green: 0.29, blue: 0.68)
    }
    
    var body: some View {
        NavigationView(content: {
            
            VStack {
                ZStack {
                    Image("Samsat2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea(.all)
                        .brightness(-0.2)
                    
                    VStack(alignment: .leading) { // Here we specify the alignment to leading
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
                                .frame(width: 300, height: 70, alignment: .topTrailing)
                        }
                    }
                }
            }
            VStack{
                Rectangle()
                    Text("Test")
                
            }
            //            NavigationLink(destination: Text("Destination")) { /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/ }
        })
    }
}
    
    struct LandingPage_Previews: PreviewProvider {
        static var previews: some View {
            LandingPage()
        }
    }

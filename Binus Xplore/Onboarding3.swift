//
//  Onboarding3.swift
//  Binus Xplore
//
//  Created by Victor Chandra on 05/07/23.
//

import SwiftUI
import CoreData

struct Onboarding3: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    struct Constants {
        static let Primary: Color = Color(red: 0, green: 0.29, blue: 0.68)
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Image("Onboarding3")
                    .resizable()
                    .scaledToFit()
                    .padding(0)
                    .frame(width: 325, height: 305, alignment: .center)
                
                Text("Effectivity")
                    .font(Font.custom("SF Pro", size: 45).weight(.bold))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                    .frame(width: 262, height: 54, alignment: .top)
                
                Text("Keep yourself on the move without ever getting lost!")
                    .font(Font.custom("SF Pro", size: 18))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6))
                    .frame(width: 285, height: 63, alignment: .top)
                
                NavigationLink(destination: LandingPage()) {
                    Text("Let's Get Started!")
                        .foregroundColor(.white)
                        .padding()
                        .background(Constants.Primary)
                        .cornerRadius(15)
                        .navigationBarBackButtonHidden(true)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct Onboarding3_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding3()
    }
}

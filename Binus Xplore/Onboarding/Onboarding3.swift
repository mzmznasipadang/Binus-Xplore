//
//  Onboarding3.swift
//  Binus Xplore
//
//  Created by Victor Chandra on 05/07/23.
//

import SwiftUI

struct Onboarding3: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationView {
            VStack {
                Image("Onboarding3")
                    .resizable()
                    .scaledToFit()
                    .padding(0)
                    .frame(width: 325, height: 305, alignment: .center)
                
                Text("Effectivity")
                    .fontWeight(.bold)
                    .font(.system(size: 45))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("Apple"))
                    .frame(width: 262, height: 54, alignment: .top)
                
                Text("Keep yourself on the move without ever getting lost!")
                    .fontWeight(.regular)
                    .font(.system(size: 18))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("Apple"))
                    .frame(width: 285, height: 63, alignment: .top)
                
                NavigationLink(destination: LandingPage()) {
                    Text("Let's Get Started!")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color("MainColor"))
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

//
//  Onboarding2.swift
//  Binus Xplore
//
//  Created by Victor Chandra on 05/07/23.
//

import SwiftUI

struct Onboarding2: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationView {
            VStack {
                Image("Onboarding2")
                    .resizable()
                    .scaledToFit()
                    .padding(0)
                    .frame(width: 325, height: 305, alignment: .center)
                
                Text("Efficiency")
                    .fontWeight(.bold)
                    .font(.system(size: 45))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("Apple"))
                    .frame(width: 262, height: 54, alignment: .top)
                
                Text("Fastest and easiest routes, tailored for your needs.")
                    .font(.system(size: 18))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("Apple"))
                    .frame(width: 285, height: 63, alignment: .top)
                
                NavigationLink(destination: Onboarding3()) {
                    Text("Continue")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color("MainColor"))
                        .cornerRadius(15)
                }
            }
//            .background(Color("WhiteBG"))
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct Onboarding2_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding2()
    }
}

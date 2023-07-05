//
//  Onboarding2.swift
//  Binus Xplore
//
//  Created by Victor Chandra on 05/07/23.
//

import SwiftUI
import CoreData

struct Onboarding2: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    struct Constants {
        static let Primary: Color = Color(red: 0, green: 0.29, blue: 0.68)
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Image("Onboarding2")
                    .resizable()
                    .scaledToFit()
                    .padding(0)
                    .frame(width: 325, height: 305, alignment: .center)
                
                Text("Efficiency")
                    .font(Font.custom("SF Pro", size: 45).weight(.bold))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                    .frame(width: 262, height: 54, alignment: .top)
                
                Text("Fastest and easiest routes, tailored for your needs.")
                    .font(Font.custom("SF Pro", size: 18))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6))
                    .frame(width: 285, height: 63, alignment: .top)
                
                NavigationLink(destination: Onboarding3()) {
                    Text("Continue")
                        .foregroundColor(.white)
                        .padding()
                        .background(Constants.Primary)
                        .cornerRadius(15)
                }
            }
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

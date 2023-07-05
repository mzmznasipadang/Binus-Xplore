//
//  ContentView.swift
//  Binus Xplore
//
//  Created by Victor Chandra on 05/07/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    struct Constants {
        static let Primary: Color = Color(red: 0, green: 0.29, blue: 0.68)
    }
    
    var body: some View {
        VStack {
            Image("ColorOnboarding")
                .resizable()
                .scaledToFit()
                .padding(0)
                .frame(width: 325, height: 305, alignment: .center)
            
            Text("Accessibility")
                .font(Font.custom("SF Pro", size: 45).weight(.bold))
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                .frame(width: 262, height: 54, alignment: .top)
            
            Text("Stay worry-free in Buncis@Alam Sutera! There's always a way")
                .font(Font.custom("SF Pro", size: 18))
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6))
                .frame(width: 285, height: 63, alignment: .top)
            
            Button(action: {
                print("Mwah Mwah Mwah")
            }) {
                Text("Continue")
                    .font(Font.custom("SF Pro", size: 20).weight(.medium))
                    .foregroundColor(.white)
                    .frame(width: 100, height: 50)
                    .background(Constants.Primary)
                    .cornerRadius(30)
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 14)
            .background(Constants.Primary)
            .cornerRadius(20)
        }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }


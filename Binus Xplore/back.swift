//
//  BackView.swift
//  Binus Xplore
//
//  Created by Tyogo Utomo on 11/07/23.
//

import Foundation
import SwiftUI

struct back: View {
    var body: some View {
        VStack(){
            Button(action: {
                // Action to be performed when the button is tapped
                //                print("Button tapped")
//                BackFunc()
            }) {
                Image("back-chevron")
                    .position(x:65, y:100)
            }
        }
    }
}
struct BackFunc: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("Go Back")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
            Spacer()
        }
        .navigationBarTitle("Next View")
    }
}
struct back_Previews: PreviewProvider {
    static var previews: some View {
        back()
    }
}
//BackView

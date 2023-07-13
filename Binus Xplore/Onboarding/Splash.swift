//
//  Splash.swift
//  Binus Xplore
//
//  Created by Victor Chandra on 05/07/23.
//

import Foundation
import SwiftUI


struct Splash: View {
    
    @State var isActive: Bool = false
    
    var body: some View {
        HStack{
            
            if self.isActive{
                Onboarding()
            } else {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 300, height: 300)
                    .background(
                        Image("Logo")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 300, height: 300)
                            .clipped()
                    )
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5){
                withAnimation(.linear){
                    self.isActive = true
                        
                }
            }
        }
    }
}

struct Splash_Previews: PreviewProvider {
    static var previews: some View{
        Splash()
    }
}

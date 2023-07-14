//
//  Splash.swift
//  Binus Xplore
//
//  Created by Victor Chandra on 05/07/23.
//

import Foundation
import SwiftUI


struct Splash: View {
    
//    @State var isActive: Bool = false
    @State private var isActive = false
    @State private var size = 0.1
    @State private var opacity = 0.5
    
    
    var body: some View{
        if isActive{
            Onboarding()
        }
        else{
            ZStack{
                Color.white
                    .ignoresSafeArea()
                VStack{
                    VStack{
                        Image("Logo")
                            .frame(width:30.0, height: 30.0)
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear{
                        withAnimation(.easeIn(duration:1.2)){
                            self.size=0.6
                            self.opacity=1.0
                        }
                    }
                }
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now()+3.5){
                        self.isActive=true
                    }
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

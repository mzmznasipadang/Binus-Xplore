//
//  TabBarButton.swift
//  Binus Xplore
//
//  Created by Victor Chandra on 10/07/23.
//

import SwiftUI

struct TabBarButton: View {
    
    var buttonText : String
    var imageName : String
    var isActive : Bool
    
    var body: some View {
        
        //Geo Reader for Bookmark and Profile
        GeometryReader { geo in
            
            
            if isActive {
                
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: geo.size.width/2, height: 4)
                    .padding(.leading, geo.size.width/4)
            }
            
            VStack(alignment: .center, spacing: 4){
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 21 , height: 28)
                    .foregroundColor(Color(red: 0, green: 0.29, blue: 0.68))
                
                Text(buttonText)
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
        
    }
}

struct TabBarButton_Previews: PreviewProvider{
    static var previews: some View {
        TabBarButton(buttonText: "Bookmark", imageName: "bookmark", isActive: true)
    }
}

//
//  Profile.swift
//  Binus Xplore
//
//  Created by Jessica Lynn on 12/07/23.
//

import Foundation
import SwiftUI
import CoreData

struct Profile: View{
    @EnvironmentObject var globalData: GlobalData
    @State private var selectedOption = 0
//    let context = PersistenceController.shared.container.viewContext
    var body: some View{
        NavigationView{
            VStack{
                Spacer(minLength: 30)
                Image("JohnDoe")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 224, height: 179)
                    .clipShape(Circle())
                
                HStack {
                    if(globalData.name == ""){
                        Text("Jane Doe")
                            .font(.title)
                            .fontWeight(.semibold)
                            .font(.system(size: 30))
                    }else{
                        Text(globalData.name)
                            .font(.title)
                            .fontWeight(.semibold)
                            .font(.system(size: 30))
                    }
                    Button(action: {
                        let alert = UIAlertController(title: "Change Phone Number", message: nil, preferredStyle: .alert)
                        alert.addTextField { textField in
                            textField.placeholder = "Enter a phone number"
                        }
                        alert.addAction(UIAlertAction(title: "Save", style: .default) { _ in
                            if let newName = alert.textFields?.first?.text {
                                globalData.name = newName
                            }
                        })
                        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
                        // Present the alert
                        UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true)
                    }) {
                        Image(systemName: "pencil")
                            .foregroundColor(Color.gray)
                    }
                }
                .offset(y: 20)
                VStack (spacing:35){
                    VStack(alignment: .leading, spacing:25){
                        Text("Biodata")
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                            .kerning(0.374)
                            .foregroundColor(Color("Apple"))
                        
                        HStack{
                            Image(systemName: "figure.roll")
                            Picker(selection: $selectedOption, label: Text("PICK")) {
                                ForEach(0..<globalData.special_needs_options.count) { index in
                                    Text(globalData.special_needs_options[index])
                                        .accentColor(.apple)
                                }
                            }
                            
                            Spacer()
                            
                            Button {
                                
                            } label: {
                                Image("dropdown")
                                    .resizable()
                                
                            }
                            .scaledToFit()
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .frame(width: 30, height: 30)
                            
                            
                        }
                        .padding(.horizontal, 18)
                        .padding(.vertical, 16.5)
                        .frame(width: 340, height: 50, alignment: .leading)
                        .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.black, lineWidth: 1)
                        )
                        Button(action:{
                            let alert = UIAlertController(title: "Change Phone Number", message: nil, preferredStyle: .alert)
                            alert.addTextField { textField in
                                textField.placeholder = "Enter a phone number"
                            }
                            alert.addAction(UIAlertAction(title: "Save", style: .default) { _ in
                                if let newPhone = alert.textFields?.first?.text {
                                    globalData.phone = newPhone
                                }
                            })
                            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
                            // Present the alert
                            UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true)
                        }){
                            HStack{
                                Image(systemName: "phone.fill")
                                    .foregroundColor(Color.black)
                                if(globalData.phone == ""){
                                    Text("08XXXXXXXXX")
                                        .font(Font.custom("SF Pro", size: 14))
                                        .kerning(0.374)
                                        .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59)).padding(16.5)
                                }else{
                                    Text(globalData.phone)
                                        .font(Font.custom("SF Pro", size: 14))
                                        .kerning(0.374)
                                        .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59)).padding(16.5)
                                }
                            }
                            .padding(.horizontal, 18)
                            .padding(.vertical, 16.5)
                            .frame(width: 340, height: 50, alignment: .leading)
                            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.black, lineWidth: 1)
                            )
                        }
                        
                    }
                    
                    // perlu space betwen keduanya
                    
                    VStack(alignment: .leading, spacing:25){
                        Text("Emergency Contact")
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                            .kerning(0.374)
                            .foregroundColor(Color("Apple"))
                        Button(action:{
                            let alert = UIAlertController(title: "Change Phone Number", message: nil, preferredStyle: .alert)
                            alert.addTextField { textField in
                                textField.placeholder = "Enter a phone number"
                            }
                            alert.addAction(UIAlertAction(title: "Save", style: .default) { _ in
                                if let newEmergency1 = alert.textFields?.first?.text {
                                    globalData.emergency_1 = newEmergency1
                                }
                            })
                            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
                            // Present the alert
                            UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true)
                        }){
                            HStack{
                                
                                Image(systemName: "phone.fill")
                                    .foregroundColor(Color.black)
                                if(globalData.emergency_1 == ""){
                                    Text("08XXXXXXXXX")
                                        .font(Font.custom("SF Pro", size: 14))
                                        .kerning(0.374)
                                        .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59)).padding(16.5)
                                }else{
                                    Text(globalData.emergency_1)
                                        .font(Font.custom("SF Pro", size: 14))
                                        .kerning(0.374)
                                        .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59)).padding(16.5)
                                }
                                Text("Assistant")
                                    .font(Font.custom("SF Pro", size: 14))
                                    .kerning(0.374)
                                    .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                                    .offset(x:70)
                            }
                            .padding(.horizontal, 18)
                            .padding(.vertical, 16.5)
                            .frame(width: 340, height: 50, alignment: .leading)
                            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.black, lineWidth: 1)
                            )
                        }
                        
                        Button(action:{
                            let alert = UIAlertController(title: "Change Phone Number", message: nil, preferredStyle: .alert)
                            alert.addTextField { textField in
                                textField.placeholder = "Enter a phone number"
                            }
                            alert.addAction(UIAlertAction(title: "Save", style: .default) { _ in
                                if let newEmergency2 = alert.textFields?.first?.text {
                                    globalData.emergency_2 = newEmergency2
                                }
                            })
                            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
                            // Present the alert
                            UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true)
                        }){
                            HStack{
                                
                                Image(systemName: "phone.fill")
                                    .foregroundColor(Color.black)
                                if(globalData.emergency_1 == ""){
                                    Text("08XXXXXXXXX")
                                        .font(Font.custom("SF Pro", size: 14))
                                        .kerning(0.374)
                                        .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59)).padding(16.5)
                                }else{
                                    Text(globalData.emergency_2)
                                        .font(Font.custom("SF Pro", size: 14))
                                        .kerning(0.374)
                                        .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59)).padding(16.5)
                                }
                                Text("Dad")
                                    .font(Font.custom("SF Pro", size: 14))
                                    .kerning(0.374)
                                    .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                                    .offset(x:85)
                                
                                Spacer()
                            }
                            .padding(.horizontal, 18)
                            .padding(.vertical, 16.5)
                            .frame(width: 340, height: 50, alignment: .leading)
                            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.black, lineWidth: 1)
                            )
                        }
                    }
                }.offset(y:41)
                
                VStack //Nav Menu
                { //Navigation Menu
                    Spacer()
                    ZStack{
                        Rectangle()
                            .fill(Color("AppleText"))
                            .frame(height: 94)
                        HStack{
                            NavigationLink(destination: Bookmark()){ // Later Change to Bookmark
                                Image(systemName: "bookmark")
                                    .font(Font.custom("SF Pro", size: 40))
                                    .foregroundColor(Color(red: 0.53, green: 0.73, blue: 1))
                            }
                            Spacer()
                            NavigationLink(destination: HomeView().environmentObject(globalData)){
                                ZStack{
                                    Circle()
                                        .fill(Color(red: 0.53, green: 0.73, blue: 1))
                                        .frame(width: 76, height: 76)
                                        .offset(y:-25)
                                        .overlay(
                                            Circle().stroke(Color.white, lineWidth: 7).offset(y:-25)
                                        )
                                    Image(systemName: "house.fill")
                                        .font(Font.custom("SF Pro", size: 47))
                                        .foregroundColor(.white)
                                        .offset(y:-28)
                                }
                                
                            }
                            Spacer()
                            
                            //                            NavigationLink(destination: Onboarding2()){
                            Image(systemName: "person.fill")
                                .font(Font.custom("SF Pro", size: 40))
                                .foregroundColor(Color(red: 0, green: 0.29, blue: 0.68))
                            //                            }
                        }.padding(.horizontal, 74.0)
                    }
                }
                .edgesIgnoringSafeArea(.bottom)
                .frame(maxHeight: .infinity)
            }
            .background(Color("WhiteBG"))
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
    
//    func updateEntity(name: String, email:String, phoneNumber:String, emergencycontact: String, specialNeeds: Bool) {
//        let context = PersistenceController.shared.container.viewContext
//
//        let fetchRequest: NSFetchRequest<User> = User.fetchRequest()
//        fetchRequest.predicate = NSPredicate(format: "id == %@", "123") // Use a specific condition to fetch the entity
//
//        do {
//            let result = try context.fetch(fetchRequest)
//            if let entityToUpdate = result.first {
//                // Update the properties of the entity
//                entityToUpdate.name = name
//                entityToUpdate.specialneeds = specialNeeds
//                entityToUpdate.email = email
//                entityToUpdate.phonenumber = phoneNumber
//                entityToUpdate.emergencycontact = emergencycontact
//
//                // Save the changes
//                try context.save()
//            }
//        } catch {
//            // Handle the error appropriately
//            print("Error updating entity: \(error)")
//        }
//    }

}

struct Profile_Previews: PreviewProvider{
    static var previews: some View{
        Profile().environmentObject(GlobalData())
    }
}


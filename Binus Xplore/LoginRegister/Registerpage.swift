////
////  Registerpage.swift
////  Apps
////
////  Created by Marco Davincent Dermawan on 05/07/23.
//
//
//import SwiftUI
//
//struct Loginpage: View {
//    var body: some View {
//        Loginpage()
//    }
//}
//
//struct Registerpage: View {
//    @State private var username = ""
//    @State private var password = ""
//    @State private var email = ""
//    @State private var address = ""
//    @State private var navigationBarBackButtonHidden = false
//
//    var body: some View {
//        NavigationView {
//            VStack {
//                Text("Register")
//                    .font(.largeTitle)
//                    .bold()
//                    .padding(.bottom,50)
//                Text("Full Name")
//                    .padding(.horizontal, -170)
//                HStack{
//                    TextField("Name", text: $username)
//                        .padding()
//                        .frame(width: 350, height: 50)
//                        .background(Color.white.opacity(0.8))
//                        .cornerRadius(10)
//                }
//                Text("Address")
//                    .padding(.horizontal, -170)
//                HStack{
//                                    TextField("Address", text: $address)  // New textfield for the address field
//                                        .padding()
//                                        .frame(width: 350, height: 50)
//                                        .background(Color.white.opacity(0.8))
//                                        .cornerRadius(10)
//                }
//                Text("Email")
//                    .padding(.horizontal, -170)
//                HStack{
//                    TextField("Email", text: $email)
//                        .padding()
//                        .frame(width: 350, height: 50)
//                        .background(Color.white.opacity(0.8))
//                        .cornerRadius(10)
//                }
//                Text("Password")
//                    .padding(.horizontal, -170)
//
//                HStack{
//                    SecureField("Password", text: $password)
//                        .padding()
//                        .frame(width: 350, height: 50)
//                        .background(Color.white.opacity(0.8))
//                        .cornerRadius(10)
//                }
//                HStack {
//                    Text("Forgot Password? ")
//                    Text("Click Here")
//                        .fontWeight(.bold)
//                }
//                .padding(.horizontal, -100)
//
//                NavigationLink(destination: Loginpage()) {
//                    Text("Register")
//                        .foregroundColor(.white)
//                        .padding()
//                        .background(Color("MainColor"))
//                        .cornerRadius(15)
//                        .navigationBarBackButtonHidden(true)
//                }
//            }
//                .padding()
//        }
//        .navigationBarHidden(true)
//    }
//}
//
//struct Registerpage_Previews: PreviewProvider {
//    static var previews: some View {
//        Registerpage()
//    }
//}

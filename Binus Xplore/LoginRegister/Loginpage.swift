//
//  Loginpage.swift
//  Apps
//
//  Created by Marco Davincent Dermawan on 06/07/23.
//

import Foundation
import SwiftUI

struct Loginpage: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = false
    @State private var wrongPassword = false
    @State private var showingLoginScreen = false
    @State private var animateCircles = false

    var body: some View {
        NavigationView {
            ZStack {
                Color.black
                    .ignoresSafeArea()

                ZStack {
                    Circle()
                        .scaleEffect(animateCircles ? 2.6 : 0.5) // Start from a small size and scale up
                        .foregroundColor(.white.opacity(0.9))
                        .animation(.easeInOut(duration: 1.5))
                    
                    Circle()
                        .scaleEffect(animateCircles ? 2.6 : 0.3) // Start from a small size and scale up
                        .foregroundColor(.white.opacity(0.7))
                        .animation(.easeInOut(duration: 1.5).delay(0.5))
                }
                .padding()
                .onAppear {
                    animateCircles = true
                }

                VStack {
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding(.bottom,50)
                    
                    Text("Email")
                        .padding(.horizontal,-170)
                    
                    TextField("Email", text: $username)
                        .padding()
                        .frame(width: 350, height: 50)
                        .background(Color.white.opacity(0.8))
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(wrongUsername ? Color.red : Color.white, lineWidth: 2)
                        )
                    
                    Text("Password")
                        .padding(.horizontal,-170)
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 350, height: 50)
                        .background(Color.white.opacity(0.8))
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(wrongPassword ? Color.red : Color.white, lineWidth: 2)
                        )
                    
                    HStack {
                        Text("Forgot Password? ")
                        Text("Click Here")
                            .fontWeight(.bold)
                    }
                    .padding(.horizontal,-100)
                    
                    Button("Login") {
                        authenticateUser(username: username, password: password)
                    }
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 50)
                    .background(Color(red: 0.5, green: 0.7, blue: 0.9).opacity(0.5))
                    .cornerRadius(10)
                    .padding(.top)
                    
                    NavigationLink(destination: HomeView(), isActive: $showingLoginScreen) {
                        EmptyView()
                    }
                    
                    VStack {
                        HStack {
                            Text("Or Use")
                        }
                        .padding(20)
                        
                        HStack {
                            HStack {
                                Button("Google") {
                                    authenticateUser(username: username, password: password)
                                }
                                .foregroundColor(.white)
                                .frame(width: 100, height: 50)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .padding(.top)
                            }
                            
                            HStack {
                                Button("Sign in with Apple") {
                                    authenticateUser(username: username, password: password)
                                }
                                .foregroundColor(.white)
                                .frame(width: 150, height: 50)
                                .background(Color.black)
                                .cornerRadius(10)
                                .padding(.top)
                            }
                            .padding(10)
                        }
                        .padding(.bottom,50)
                        
                        HStack {
                            Text("Don't have account?")
                            Text("Sign Up")
                                .bold()
                        }
                    }
                }
                .padding()
            }
        }
        .navigationBarHidden(true)
    }

    func authenticateUser(username: String, password: String) {
        if username == "Test" {
            wrongUsername = false
            if password == "Test" {
                wrongPassword = false
                showingLoginScreen = true
            } else {
                wrongPassword = true
            }
        } else {
            wrongUsername = true
        }
    }
}

struct Loginpage_Previews: PreviewProvider {
    static var previews: some View {
        Loginpage()
    }
}


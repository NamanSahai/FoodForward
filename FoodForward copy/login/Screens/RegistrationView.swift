//
//  RegistrationView.swift
//  login
//
//  Created by Meghna Vyas on 16/02/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var fullName = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Welcome Onboard")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("Let’s help you connect with the people in need")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    TextField("Enter your full name", text: $fullName)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    
                    TextField("Enter your email", text: $email)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    
                    SecureField("Enter password", text: $password)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    
                    SecureField("Confirm password", text: $confirmPassword)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    
                    
                    NavigationLink(
                        destination: DashboardView().navigationBarHidden(true),
                        label:
                            {
                        Text("Register")
                            .foregroundColor(Color("BgColor"))
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color("AccentColor"))
                            .cornerRadius(10)
                            })
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Already have an Account?")
                        
                        NavigationLink(destination:  SignInScreenView().navigationBarHidden(true),
                                       label: {
                            Text("Sign in")
                                .foregroundColor(.blue)
                                           
                                       })
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal)
                }
                .padding()
                .navigationTitle("Registration")
            }
        }
    }


struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
            .previewDevice("iPhone 15 Pro")
    }
}


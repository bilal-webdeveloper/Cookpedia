//
//  LoginView.swift
//  Cookpedia
//
//  Created by Bilal Dallali on 06/03/2023.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    @FocusState private var emailFieldIsFocused: Bool
    @State private var isPasswordHidden: Bool = true
    @State private var isCheckboxChecked: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 32) {
                VStack(spacing: 12) {
                    HStack {
                        Text("Hello there 👋")
                            .foregroundColor(Color("Greyscale900"))
                            .font(.custom("Urbanist-Bold", size: 32))
                        Spacer()
                    }
                    HStack {
                        HStack {
                            Text("Please enter your username/email and password to sign in.")
                                .foregroundColor(Color("Greyscale900"))
                                .font(.custom("Urbanist-Regular", size: 18))
                            Spacer()
                        }
                    }
                }
                
                
                VStack(spacing: 24) {
                    VStack(spacing: 16) {
                        HStack {
                            Text("Username / Email")
                                .foregroundColor(Color("Greyscale900"))
                                .font(.custom("Urbanist-Bold", size: 16))
                            Spacer()
                        }
                        TextField("Email or Username", text: $email)
                            .autocapitalization(.none)
                            .font(Font.custom("Urbanist-Bold", size: 20))
                            .foregroundColor(Color("Greyscale900"))
                            .focused($emailFieldIsFocused)
                            .frame(height: 41)
                            .overlay(
                                Rectangle()
                                    .frame(height: 1)
                                    .foregroundColor(Color("Primary"))
                                    .padding(.top), alignment: .bottom
                            )
                    }
                    
                    VStack(spacing: 16) {
                        HStack {
                            Text("Password")
                                .foregroundColor(Color("Greyscale900"))
                                .font(.custom("Urbanist-Bold", size: 16))
                            Spacer()
                        }
                        HStack {
                            SecureField("Password", text: $password)
                                .font(Font.custom("Urbanist-Bold", size: 20))
                                .foregroundColor(Color("Greyscale900"))
                            Spacer()
                            Button {
                                isPasswordHidden.toggle()
                            } label: {
                                Image(isPasswordHidden == true ? "hidden-eye" : "eye")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                            }
                        }
                        .frame(height: 41)
                        .overlay(
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(Color("Primary"))
                                .padding(.top), alignment: .bottom
                        )
                    }
                    
                    HStack {
                        HStack(spacing: 16) {
                            Button {
                                isCheckboxChecked.toggle()
                            } label: {
                                Image(isCheckboxChecked == false ? "checkbox-checked" : "checkbox-unchecked")
                            }
                            Text("Remember me")
                                .font(.custom("Urbanist-SemiBold", size: 18))
                        }
                        Spacer()
                    }
                    Divider()
                    

                    
                    NavigationLink {
                        ForgottenPassword()
                    } label: {
                        Text("Forgot Password")
                            .foregroundColor(Color("Primary"))
                            .font(.custom("Urbanist-Bold", size: 18))
                    }

                }
                
                VStack(spacing: 24) {
                    
                }
            }
            .padding(24)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackButton())
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

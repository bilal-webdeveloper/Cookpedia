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
    @State private var isPresented: Bool = false
    
    var body: some View {
        NavigationView {
            
            VStack {
                ScrollView {
                    VStack(spacing: 24) {
                        HStack {
                            NavigationLink(destination: ContentView()) {
                                Image("arrow-left")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundColor(Color("Greyscale900"))
                                    .padding(.vertical, 10)
                            }
                            Spacer()
                        }
                        
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
                                        if isPasswordHidden == true {
                                            SecureField("Password", text: $password)
                                                .font(Font.custom("Urbanist-Bold", size: 20))
                                                .foregroundColor(Color("Greyscale900"))
                                                .textContentType(.password)
                                                .autocapitalization(.none)
                                                .disableAutocorrection(true)
                                        } else {
                                            TextField("Password", text: $password)
                                                .font(Font.custom("Urbanist-Bold", size: 20))
                                                .foregroundColor(Color("Greyscale900"))
                                                .textContentType(.password)
                                                .autocapitalization(.none)
                                                .disableAutocorrection(true)
                                        }
                                        
                                        
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
                                HStack {
                                    VStack {
                                        Divider()
                                            .frame(width: 110)
                                    }
                                    Spacer()
                                    Text("or continue with")
                                        .foregroundColor(Color("Greyscale700"))
                                        .font(.custom("Urbanist-Medium", size: 18))
                                        .multilineTextAlignment(.center)
                                    Spacer()
                                    VStack {
                                        Divider()
                                            .frame(width: 110)
                                    }
                                    
                                }
                                HStack {
                                    Button {
                                        //
                                    } label: {
                                        HStack {
                                            Spacer()
                                            Image("google-logo")
                                                .resizable()
                                                .frame(width: 24, height: 24)
                                            Spacer()
                                        }
                                        .frame(height: 70)
                                        .overlay {
                                            RoundedRectangle(cornerRadius: .infinity)
                                                .stroke(Color("Greyscale200"), lineWidth: 1)
                                        }
                                    }
                                    
                                    Spacer()
                                    Button {
                                        //
                                    } label: {
                                        HStack {
                                            Spacer()
                                            Image("apple-logo")
                                                .resizable()
                                                .frame(width: 24, height: 24)
                                            Spacer()
                                        }
                                        .frame(height: 70)
                                        .overlay {
                                            RoundedRectangle(cornerRadius: .infinity)
                                                .stroke(Color("Greyscale200"), lineWidth: 1)
                                        }
                                    }
                                    
                                    Spacer()
                                    
                                    Button {
                                        //
                                    } label: {
                                        HStack {
                                            Spacer()
                                            Image("facebook-logo")
                                                .resizable()
                                                .frame(width: 24, height: 24)
                                            Spacer()
                                        }
                                        .frame(height: 70)
                                        .overlay {
                                            RoundedRectangle(cornerRadius: .infinity)
                                                .stroke(Color("Greyscale200"), lineWidth: 1)
                                        }
                                    }
                                    
                                }
                                
                            }
                        }
                    }
                    .padding(.horizontal, 24)
                    .padding(.top, 16)
                    Spacer()
                }
                Button {
                    //
                } label: {
                    HStack {
                        Spacer()
                        Text("Sign In")
                            .foregroundColor(Color("White"))
                            .frame(height: 58)
                            .font(.custom("Urbanist-Bold", size: 16))
                        Spacer()
                    }
                    .background(Color("Primary"))
                    .cornerRadius(.infinity)
                    .padding(.horizontal, 24)
                    .padding(.top, 24)
                    .padding(.bottom)
                }

            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

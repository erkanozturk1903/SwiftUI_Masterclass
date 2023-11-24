//
//  LoginView.swift
//  InstagramSwiftUITutorial
//
//  Created by Erkan Ozturk on 24.11.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationView{
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack {
                    Image("instagram")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 220, height: 100)
                        .foregroundColor(.white)

                    VStack(spacing: 20) {
                        //MARK: - Email Field
                        CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                            .padding()
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding(.horizontal, 32)

                        //MARK: - Password Field
                        CustomSecuredField(text: $password, placeholder: Text("Password"))
                            .padding()
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding(.horizontal, 32)
                    }

                    //MARK: - Forgot Password
                    HStack {
                        Spacer()
                        Button(action: {}, label: {
                            Text("Forgot Password?")
                                .font(.system(size: 13, weight: .semibold))
                                .foregroundColor(.white)
                                .padding(.top)
                                .padding(.trailing, 30)
                        })
                    }

                    //MARK: - sign In Button
                    Button(action: {}, label: {
                        Text("Sign In")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 320, height: 50)
                            .background(Color.purple.opacity(0.3))
                            .clipShape(Capsule())
                            .padding()
                    })
                    Spacer()
                    //MARK: - Go to Sign Up

                    NavigationLink(destination: RegistrationView()
                        .navigationBarHidden(true),
                                   label: {
                        HStack {
                            Text("Don't have a account?").font(.system(size: 14))

                            Text("Sign Up")
                                .font(.system(size: 14, weight: .semibold))
                        }
                        .foregroundColor(.white)
                    }).padding(.bottom, 16)
                    }
                .padding(.top, 54)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

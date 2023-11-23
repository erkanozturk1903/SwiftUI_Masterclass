//
//  RegistrationView.swift
//  InstagramSwiftUITutorial
//
//  Created by Erkan Ozturk on 24.11.2023.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var fullname = ""
    @State private var username = ""
    @State private var password = ""
    @State private var selectedImage: UIImage?
    @State private var image: Image?
    @State var imagePickerPresented = false
    @Environment(\.presentationMode) var mode


    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                //MARK: - Add Photo
                ZStack {
                    if let image = image {
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 180, height: 180)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                    } else {
                        Button(action: {imagePickerPresented.toggle()}, label: {
                            VStack {
                                Image("plus_icon")
                                    .resizable()
                                    .renderingMode(.template)
                                    .scaledToFill()
                                    .frame(width: 180, height: 180)
                                    .clipped()
                                    .foregroundColor(.white)

                                Text("Photo Add")
                                    .font(.system(size: 16))
                                    .foregroundColor(.white)
                            }
                        }).sheet(isPresented: $imagePickerPresented,onDismiss: loadImage, content: {
                            ImagePicker(image: $selectedImage)
                        }).padding()
                    }
                }

                VStack(spacing: 20) {
                    //MARK: - Email Field
                    CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.horizontal, 32)

                    //MARK: - Username
                    CustomTextField(text: $username, placeholder: Text("Username"), imageName: "person")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.horizontal, 32)


                    //MARK: - Full Name

                    CustomTextField(text: $fullname, placeholder: Text("Full Name"), imageName: "person")
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
                //MARK: - sign In Button
                Button(action: {}, label: {
                    Text("Sign Up")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 320, height: 50)
                        .background(Color.purple.opacity(0.3))
                        .clipShape(Capsule())
                        .padding()
                })
                Spacer()
                //MARK: - Go to Sign In
                Button(action: {mode.wrappedValue.dismiss()}, label: {
                    HStack {
                        Text("Already have an account").font(.system(size: 14))

                        Text("Sign In")
                            .font(.system(size: 14, weight: .semibold))
                    }
                    .foregroundColor(.white)
                    })
                }
        }
    }
}

extension RegistrationView {
    func loadImage() {
        guard let selectedImage = selectedImage else {return}
        image = Image(uiImage: selectedImage)
    }
}


struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}

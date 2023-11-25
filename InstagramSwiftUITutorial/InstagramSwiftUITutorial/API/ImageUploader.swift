//
//  ImageUploader.swift
//  InstagramSwiftUITutorial
//
//  Created by Erkan Ozturk on 25.11.2023.
//

import UIKit
import FirebaseStorage

//MARK: - UPLOAD IMAGE
struct ImageUploader {
    static func uploadImage(image: UIImage, completion: @escaping(String) -> Void) {
        guard let imageData = image.jpegData(compressionQuality: 0.50) else {return}
        let filename = NSUUID().uuidString
        let ref = Storage.storage().reference(withPath: "/profile_images/\(filename)")

        ref.putData(imageData, metadata: nil){ _, error in
            if let error = error {
                print("DEBUG: Failed to upload image \(error.localizedDescription)")
                return
            }
            print("Successfully uploaded image...")

            ref.downloadURL {url, _ in
                guard let imageUrl = url?.absoluteString else {return}
                completion(imageUrl)
            }
        }
    }
}

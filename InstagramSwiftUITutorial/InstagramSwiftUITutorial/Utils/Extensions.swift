//
//  Extensions.swift
//  InstagramSwiftUITutorial
//
//  Created by Erkan Ozturk on 20.11.2023.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

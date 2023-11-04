//
//  FructusAppApp.swift
//  FructusApp
//
//  Created by Erkan Ozturk on 26.10.2023.
//

import SwiftUI

@main
struct FructusAppApp: App {
    @AppStorage("isOnboarding") var isOnBoarding: Bool = true



    var body: some Scene {
        WindowGroup {
            if isOnBoarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}

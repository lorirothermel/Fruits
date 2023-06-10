//
//  FruitsApp.swift
//  Fruits
//
//  Created by Lori Rothermel on 6/9/23.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }  // if
            
        }  // WindowGroup
    }  // some Scene
}  // FruitsApp

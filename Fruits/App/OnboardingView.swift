//
//  OnboardingView.swift
//  Fruits
//
//  Created by Lori Rothermel on 6/9/23.
//

import SwiftUI

struct OnboardingView: View {
    var fruits: [Fruit] = fruitsData
    
    
    var body: some View {
        TabView {
                ForEach(fruits[0...fruits.count-1]) { fruit in
                    FruitCardView(fruit: fruit)
                }  // ForEach
        }  // TabView
        .tabViewStyle(.page)

    }  // some View
}  // OnboardingView


struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}

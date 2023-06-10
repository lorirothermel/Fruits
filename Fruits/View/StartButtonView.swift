//
//  StartButtonView.swift
//  Fruits
//
//  Created by Lori Rothermel on 6/9/23.
//

import SwiftUI

struct StartButtonView: View {
// MARK: - Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    
// MARK: - Body
    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }  // HStack
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .strokeBorder(.white, lineWidth: 1.25)
            )  // .background
        }  // Button
        .accentColor(.white)
        

    }  // some View
}  // StartButtonView



// MARK: - Preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}

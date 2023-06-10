//
//  FruitDetailView.swift
//  Fruits
//
//  Created by Lori Rothermel on 6/10/23.
//

import SwiftUI

struct FruitDetailView: View {
    @Environment(\.dismiss) var dismiss
    
    
    var fruit: Fruit
    
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // Header
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        // Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        // Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        // Nutrients
                        FruitNutrientsView(fruit: fruit)
                        // Subheadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        // Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        // Link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }  // VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }  // VStack
                .navigationBarBackButtonHidden()
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "chevron.left")
                            Text("Fruits")
                        }  // Button
                    } // ToolbarItem
                }  // .toolbar
            }  // ScrollView
            .edgesIgnoringSafeArea(.all)
        }  // NavigationStack
        
    }  // some View
}  // FruitDetailView

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            FruitDetailView(fruit: fruitsData[0])
        }
        
    }
}

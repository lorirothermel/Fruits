//
//  FruitModel.swift
//  Fruits
//
//  Created by Lori Rothermel on 6/9/23.
//

import SwiftUI

// MARK: - Fruits Data Model

struct Fruit: Identifiable {
       
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}

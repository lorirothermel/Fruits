//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by Lori Rothermel on 6/10/23.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var labelText: String
    var labelImage: String
    
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }  // HStack
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

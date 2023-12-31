//
//  SourceLinkView.swift
//  Fruits
//
//  Created by Lori Rothermel on 6/10/23.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com/")!)
                Image(systemName: "arrow.up.right.square")
            }  // HStack
            .font(.footnote)
        }  // GroupBox
    }  // some View
}  // SourceLinkView


struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

//
//  ContentView.swift
//  Fruits
//
//  Created by Lori Rothermel on 6/9/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingSettings: Bool = false
    
    var friuts: [Fruit] = fruitsData
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(friuts) { fruit in
                    NavigationLink {
                        FruitDetailView(fruit: fruit)
                    } label: {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }  // NavigationLink
                }  // ForEach
            }  // List
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                    })  // Button
                    .sheet(isPresented: $isShowingSettings, content: {
                        SettingsView()
                    })  // .sheet
            )  // NavigationBarItems
        }  // NavigationStack
        .navigationViewStyle(.stack)
    }  // some View
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(friuts: fruitsData)
    }
}

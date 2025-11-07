//
//  ContentView.swift
//  YouAreAwesomeSwift
//
//  Created by Doughy on 7/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text("You are Awesome!")
                .foregroundStyle(.red)
                .font(.largeTitle)
                .fontWeight(.bold)
            Button("Click me!") {
                print("You clicked me!")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

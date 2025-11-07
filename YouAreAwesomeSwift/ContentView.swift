//
//  ContentView.swift
//  YouAreAwesomeSwift
//
//  Created by Doughy on 7/11/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "I am a Programmer!!"
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(message)
                .foregroundStyle(.red)
                .font(.largeTitle)
                .fontWeight(.bold)
            Button("Click me!") {
                message = "Awesome!!"
            }
            Button("Click me too") {
                message = "Super!!"
                }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

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
            Spacer()
            
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 200, height: 200)
            
            Text(message)
                .foregroundStyle(.black)
                .fontWeight(.ultraLight)
                .font(.largeTitle)
            
            Spacer()
            
            HStack {
                Button("Click me!") {
                    message = "Awesome!!"
                }
                
                Button("Click me too") {
                    message = "Super!!"
                }
            }
            .buttonStyle(.glassProminent)
            .font(.largeTitle)
            .tint(.purple)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

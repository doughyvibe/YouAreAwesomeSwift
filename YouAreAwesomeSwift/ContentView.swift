//
//  ContentView.swift
//  YouAreAwesomeSwift
//
//  Created by Doughy on 7/11/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var mNumber = 0
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            
            Text(message)
                .foregroundStyle(.red)
                .fontWeight(.heavy)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            
            Spacer()
            
            Button("TADA!") {
                let messages = ["You are awesome!",
                                "You are Great!",
                                "You are Genius!" ,
                                "You are Fattest Man Alive!",
                                "Wow!"]
                
                message = messages[mNumber]
                
                mNumber += 1
                if mNumber == messages.count {
                    mNumber = 0
                }
                
                
                imageName = "image\(imageNumber)"

                imageNumber += 1
                if imageNumber > 9 {
                    imageNumber = 0
                }

            
            }.buttonStyle(.borderedProminent)
                .font(.title2)
        }
        
    }
}

#Preview {
    ContentView()
}

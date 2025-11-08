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
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    
    var body: some View {
        VStack {
            
            Text(message)
                .foregroundStyle(.red)
                .fontWeight(.heavy)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 120)
                .animation(.easeInOut(duration: 0.1), value: message)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.default, value: imageName)
            
            
            Spacer()
            
            Button("TADA!") {
                let messages = ["You are awesome!",
                                "You are Great!",
                                "You are Genius!" ,
                                "Wow!"]
                
//                let lastMessageNumber = message
//                
//                repeat {
//                    message = messages[Int.random(in: 0..<messages.count)]
//                } while message == lastMessageNumber
//                
//                let lastImageNumber = imageName
//                
//                repeat {
//                    imageName = "image\(Int.random(in: 0...9))"
//                } while imageName == lastImageNumber
                
                var messageNumber: Int
                
                repeat {
                    messageNumber = Int.random(in: 0...messages.count-1)
                } while messageNumber == lastMessageNumber
                
                message = messages[messageNumber]
                lastMessageNumber = messageNumber
                
                var imageNumber: Int
                
                repeat {
                    imageNumber = Int.random(in: 0...9)
                } while imageNumber == lastImageNumber
                
                lastImageNumber = imageNumber
                imageName = "image\(imageNumber)"
                

            
            }.buttonStyle(.borderedProminent)
                .font(.title2)
        }
        
    }
}

#Preview {
    ContentView()
}

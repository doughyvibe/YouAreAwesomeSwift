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
            
            Spacer()
            
            Button("Press me!") {
                
                let message1 = "You are awesome!"
                let message2 = "You are Great!"
                //                let img1 = "sun.max.fill"
                //                let img2 = "hand.thumbsup"
                //                if message == message1 {
                //                    imageView = img1
                //                    message = message2
                //                } else {
                //                    imageView = img2
                //                    message = message1
                //                 }
                //Ternary operator
                message = (message == message1 ? message2 : message1)
                imageName = (imageName == "image0" ? "image1" : "image0")
                
                //Switch case++
                
//                switch message {
//                case message2:
//                    imageName = "image0"
//                    message = message1
//                default:
//                    imageName = "image1"
//                    message = message2
                
//                }
                
                
            }.buttonStyle(.borderedProminent)
                .font(.title2)
        }
        
    }
}

#Preview {
    ContentView()
}


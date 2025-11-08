//
//  ContentView.swift
//  YouAreAwesomeSwift
//
//  Created by Doughy on 7/11/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageView = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(systemName: imageView)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            Text(message)
                .foregroundStyle(.black)
                .fontWeight(.thin)
                .font(.largeTitle)
            
            Spacer()
            
            Button("Press me!") {
                
                let message1 = "You are awesome!"
                let message2 = "You are Great!"
                let img1 = "sun.max.fill"
                let img2 = "hand.thumbsup"
//                if message == message1 {
//                    imageView = img1
//                    message = message2
//                } else {
//                    imageView = img2
//                    message = message1
//                 }
                //Ternary operator
//                message = (message == message1 ? message2 : message1)
//                imageView = (imageView == img1 ? img2 : img1)
                
                //Switch case++
                
                switch message {
                case message1:
                    imageView = img2
                    message = message2
                default:
                    imageView = img1
                    message = message1
                }
                
            }.buttonStyle(.borderedProminent)
                .tint(.orange)
        }
        
    }
}

#Preview {
    ContentView()
}

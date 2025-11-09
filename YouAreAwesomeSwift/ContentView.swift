//
//  ContentView.swift
//  YouAreAwesomeSwift
//
//  Created by Doughy on 7/11/25.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    @State private var lastSoundNum = -1
    @State private var audioPlayer: AVAudioPlayer!
    let numOfImg = 10 // image0 - image9
    let numOfSound = 6
    
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
                
                
                var messageNumber: Int
                
                repeat {
                    messageNumber = Int.random(in: 0...messages.count-1)
                } while messageNumber == lastMessageNumber
                
                message = messages[messageNumber]
                lastMessageNumber = messageNumber
                
                var imageNumber: Int
                
                repeat {
                    imageNumber = Int.random(in: 0...numOfImg-1)
                } while imageNumber == lastImageNumber
                
                imageName = "image\(imageNumber)"
                lastImageNumber = imageNumber
                
                var soundNum: Int
                repeat {
                    soundNum = Int.random(in: 0...numOfSound-1)
                } while soundNum == lastSoundNum
                
                let soundName = "sound\(soundNum)"
                lastSoundNum = soundNum
                
                guard let soundFile = NSDataAsset(name: soundName) else {
                    print("😘 You're lost! Can't identify \(soundName)")
                    return }
                
                do { audioPlayer = try AVAudioPlayer(data: soundFile.data)
                     audioPlayer.play()
                } catch { print("Error: \(error.localizedDescription)")
                }
                

            
            }.buttonStyle(.borderedProminent)
                .font(.title2)
        }
        
    }
}

#Preview {
    ContentView()
}

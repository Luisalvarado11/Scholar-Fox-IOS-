//
//  Funny.swift
//  ScholarFoxv1.0
//
//  Created by Marco Gabriel on 10/31/22.
//

import Foundation
import AVFoundation

//MARK: AudioPlayer

var audioplayer: AVAudioPlayer?

// sound: String, type: String
func playSound() {
    let sounds = ["perfect-fart", "bruh-sound-2", "bruh-sound-1", "bonk"]
    let sound = sounds.randomElement()
    
    if let path = Bundle.main.path(forResource: sound, ofType: "mp3") {
        do {
            audioplayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioplayer?.play()
        } catch {
            print("Could not play anything")
        }
    }
}


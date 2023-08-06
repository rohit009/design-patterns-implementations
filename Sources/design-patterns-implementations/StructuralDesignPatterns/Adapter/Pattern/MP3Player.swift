//  MP3Player.swift
//  Created by Rohit Patil on 06/08/23.
import Foundation

/// The existing player that is used to play music having MP3 format.
class MP3Player {
    func playMusic(fileName: String) {
        print("MP3Player: Playing music - \(fileName).")
        let _ = FileToDataConverter.convertToData(fileName: fileName)
        // Code to play the MP3 music file from here.
    }
}

/// Conformance denoting MusicPlayer protocol can be used in place of MP3Player concrete type.
extension MP3Player: MusicPlayer {
    
}

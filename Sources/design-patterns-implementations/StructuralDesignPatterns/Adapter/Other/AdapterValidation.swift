//  AdapterValidation.swift
//  Created by Rohit Patil on 06/08/23.
import Foundation

// This is the Music app calling code that uses a specific music player.
class AdapterValidation {
    
    /// Before: Using concrete class of MP3 player.
    /// - playMusic(fileName: String, player: MP3Player)
    /// After: Using the adapter client protocol as music player.
    func playMusic(fileName: String, player: MusicPlayer) {
        print("Music player app: Playing music.")
        player.playMusic(fileName: fileName)
    }
}

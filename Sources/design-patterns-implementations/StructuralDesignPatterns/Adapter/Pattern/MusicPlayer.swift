//  MusicPlayer.swift
//  Created by Rohit Patil on 06/08/23.
import Foundation

/// The interface that is conformed by Adapter and used by Music app `AdapterValidation` to play
/// music. It decouples the concrete implementations of existing music player and the adapter from
/// music app implementation.
protocol MusicPlayer {
    func playMusic(fileName: String)
}

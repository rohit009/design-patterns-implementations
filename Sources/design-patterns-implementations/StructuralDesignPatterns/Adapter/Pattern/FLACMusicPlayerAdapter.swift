//  FLACMusicPlayerAdapter.swift
//  Created by Rohit Patil on 06/08/23.
import Foundation

/// Adapter pattern implementation that makes the FLAC player work with Music app with the help of
///  MusicPlayer protocol. It communicates with the FLAC player in the format & with the interface
///  it expects.
class FLACMusicPlayerAdapter: MusicPlayer {
    private var flacPlayer: FLACPlayer
    
    init(flacPlayer: FLACPlayer) {
        self.flacPlayer = flacPlayer
    }
    
    func playMusic(fileName: String) {
        print("FLACMusicPlayerAdapter: passing the play call to FLAC player.")
        let musicData = FileToDataConverter.convertToData(fileName: fileName)
        self.flacPlayer.playFLACMusic(data: musicData)
    }
}

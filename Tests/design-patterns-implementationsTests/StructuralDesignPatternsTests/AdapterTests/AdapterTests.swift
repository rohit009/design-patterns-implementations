//  AdapterTests.swift
//  Created by Rohit Patil on 06/08/23.
import XCTest
@testable import design_patterns_implementations

final class AdapterTests: XCTestCase {
    var adapterValidationMusicApp: AdapterValidation!
    static let kSongName = "Sky full of stars"
    
    override func setUpWithError() throws {
        adapterValidationMusicApp = AdapterValidation()
    }

    func testExistingMP3Player() {
        adapterValidationMusicApp.playMusic(
            fileName: AdapterTests.kSongName,
            player: MP3Player()
        )
    }
    
    func testNewFLACPlayer() {
        // Following would not work:
        // adapterValidationMusicApp.playMusic(
        //    fileName: AdapterTests.kSongName,
        //    player: FLACPlayer()
        //)
        
        // The Music app would be able to work with new FLACPlayer with the help of adapter.
        adapterValidationMusicApp.playMusic(
            fileName: AdapterTests.kSongName,
            player: FLACMusicPlayerAdapter(flacPlayer: FLACPlayer())
        )
    }

}

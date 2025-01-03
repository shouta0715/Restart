//
//  AudioPlayer.swift
//  Restart
//
//  Created by k21047kk on 2025/01/03.
//

import Foundation
import AVFoundation

var audioPlaer: AVAudioPlayer?

func playSound(sound:String, type:String) {
  if let path = Bundle.main.path(forResource: sound, ofType: type) {
    do {
      audioPlaer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
      audioPlaer?.play()
    } catch {
      print( "Cloud not find and play the sound file.")
    }
  }
}

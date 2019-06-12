//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
//    var player: AVAudioPlayer?
//
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(tag: sender.tag)
       
    }
    
    func playSound(tag: Int) {
        let soundUrl = Bundle.main.url(forResource: "note\(tag)", withExtension: "wav")!
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl)
            guard let audioPlayer = audioPlayer else { return }
            
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        } catch let error as NSError {
            print(error)
        }
    }
    
  

}


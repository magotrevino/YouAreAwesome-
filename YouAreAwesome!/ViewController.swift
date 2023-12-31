//
//  ViewController.swift
//  YouAreAwesome!
//
//  Created by Magaly Trevino on 6/30/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var playSoundSwitch: UISwitch!
    
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    let totalNumberOfImages = 9
    let totalNumberOfSounds = 6
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func playSound(name: String) {
        if let sound = NSDataAsset(name: name) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("ERROR: \(error.localizedDescription) Could not initialize AVAudioPlayer object.")
                
            }
        } else {
            print("ERROR: Could not read data from file sound0")
        }
    }
    
    func nonRepeatingRandom(originalNumer: Int, upperLimit: Int) -> Int {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0...upperLimit)
        } while originalNumer == newNumber
        return newNumber
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You are Awesome!",
                        "You are Fantastic!",
                        "You are Great!",
                        "When the Genius Bar Needs Help, They Call You!",
                        "You've Got the Design Skill of Jony Ive!",
                        "Fabulous? That's You"]
        
        messageNumber = nonRepeatingRandom(originalNumer: messageNumber, upperLimit: messages.count-1)
        messageLabel.text = messages[messageNumber]
        
        
        imageNumber = nonRepeatingRandom(originalNumer: imageNumber, upperLimit: messages.count-1)
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        
        soundNumber = nonRepeatingRandom(originalNumer: soundNumber, upperLimit: totalNumberOfSounds-1)
        if playSoundSwitch.isOn { //is playSoundSwitch is on}
            playSound(name: "sound\(soundNumber)") //then play the sound
            
        }
    }
        
        @IBAction func playSoundToggle(_ sender: UISwitch) {
            if !sender.isOn && audioPlayer != nil {
                    audioPlayer.stop() //stop playing
                }
            }
        }
        
    


//
//  ViewController.swift
//  YouAreAwesome!
//
//  Created by Magaly Trevino on 6/30/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    var messageNumber = 0
    let totalNumberOfImages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""

    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You are Awesome!",
                        "You are Fantastic!",
                        "You are Great!",
                        "When the Genius Bar Needs Help, They Call You!",
                        "You've Got the Design Skill of Jony Ive!",
                        "Fabulous? That's You"]
        messageLabel.text = messages[Int.random(in: 0...messages.count-1)]
        imageView.image = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
        
       // messageLabel.text = messages[messageNumber]
       //messageNumber += 1
       // if messageNumber == messages.count {
       //     messageNumber = 0
       //}
        
        //let imageName = "image" + String(imageNumber)
        //let imageName = "image\(imageNumber)"
        //imageView.image = UIImage(named: imageName)
        //imageNumber = imageNumber + 1
        //if imageNumber == 10 {
        //    imageNumber = 0
        //}
        
        //imageView.image = UIImage(named: "image1")
        
//        let awesomeMessage = "You are Awesome!"
//        let greatMessage = "You are Great!"
//        let bombMessage = "You are Da Bomb!"
//
//        if messageLabel.text == awesomeMessage {
//            messageLabel.text = greatMessage
//            imageView.image = UIImage(named: "image1")
//
//        } else if messageLabel.text == greatMessage {
//            messageLabel.text = bombMessage
//            imageView.image = UIImage(named: "image2")
//        } else {
//            messageLabel.text = awesomeMessage
//            imageView.image = UIImage(named: "image0")
//        }
    }
}


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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""

    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let awesomeMessage = "You are Awesome!"
        let greatMessage = "You are Great!"
        let bombMessage = "You are Da Bomb!"
        
        if messageLabel.text == awesomeMessage {
            messageLabel.text = greatMessage
            imageView.image = UIImage(named: "image1")
           
        } else if messageLabel.text == greatMessage {
            messageLabel.text = bombMessage
            imageView.image = UIImage(named: "image2")
        } else {
            messageLabel.text = awesomeMessage
            imageView.image = UIImage(named: "image0")
        }
    }
}


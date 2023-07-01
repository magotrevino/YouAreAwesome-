//
//  ViewController.swift
//  YouAreAwesome!
//
//  Created by Magaly Trevino on 6/30/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("👍🏼 viewDidLoad has run!")
        messageLabel.text = "Fabulous? That's You!"
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("😎 The message button was pressed!")
        messageLabel.text = "You Are Awesome!"
    }
}


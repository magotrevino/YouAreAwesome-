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

    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        messageLabel.text = "You Are Awesome!"
        imageView.image = UIImage(named: "image0")
    }
}


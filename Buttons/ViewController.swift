//
//  ViewController.swift
//  Buttons
//
//  Created by Callum Boddy on 20/08/2016.
//  Copyright © 2016 Callum Boddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button: Button!
    @IBOutlet weak var primaryButton: Button!
    @IBOutlet weak var actionButton: Button!
    @IBOutlet weak var highlightButton: Button!
    @IBOutlet weak var cautionButton: Button!
    @IBOutlet weak var royalButton: Button!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.primaryButton.primaryColour()
        self.actionButton.actionColour()
        self.highlightButton.highlightColour()
        self.cautionButton.cautionColour()
        self.royalButton.royalColour()
    }
}


//
//  ViewController.swift
//  ButtonKit-Example
//
//  Created by Callum Boddy on 22/09/2016.
//  Copyright © 2016 Callum Boddy. All rights reserved.
//

import UIKit
import ButtonKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.style(.Caution, style: .Flat, radius: .Rounded)
        button.setIcon(.SocialFacebook)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.effect(.ThreeDimentional)
    }
}


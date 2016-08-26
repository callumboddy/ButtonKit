//
//  ViewController.swift
//  Buttons
//
//  Created by Callum Boddy on 20/08/2016.
//  Copyright © 2016 Callum Boddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        ButtonStyler.style(button, color: .Primary, style: .Bordered, radius: .Pill)
    }
}


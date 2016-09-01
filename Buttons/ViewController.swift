//
//  ViewController.swift
//  Buttons
//
//  Created by Callum Boddy on 20/08/2016.
//  Copyright © 2016 Callum Boddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var twitterButton: UIButton!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var githubButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        twitterButton.style(.Primary, style: .Flat, radius: .Rounded)
        facebookButton.style(.Caution, style: .Flat, radius: .Rounded)
        githubButton.style(.Highlight, style: .Flat, radius: .Rounded)
        facebookButton.setIcon(.SocialFacebook)
        githubButton.setIcon(.SocialGithub)
        twitterButton.setIcon(.SocialTwitter)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
            ButtonStyler().effect(twitterButton, effect: .ThreeDimentional)
            ButtonStyler().effect(facebookButton, effect: .ThreeDimentional)
            ButtonStyler().effect(githubButton, effect: .ThreeDimentional)
    }
}

/*
 WIP: Icon + Title
 
 let iconFont = UIFont.ioniconOfSize(24)
 let titleFont = ButtonStyler.sharedInstance.fontScheme.font
 let icon = String.ioniconWithName(.SocialTwitter)
 let text = "Twitter"
 let title = "\(icon) \(text)"
 
 let attributedTitle = NSMutableAttributedString(string: title)
	
 attributedTitle.addAttribute(NSFontAttributeName, value: iconFont, range: NSMakeRange(0, 1))
 attributedTitle.addAttribute(NSFontAttributeName, value: titleFont, range: NSMakeRange(1, 5))
 twitterButton.setAttributedTitle(attributedTitle, forState: .Normal)
 
 */

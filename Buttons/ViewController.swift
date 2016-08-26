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

        let colorScheme = ColorScheme(primaryColor: UIColor(red: 0.35, green: 0.68, blue: 0.93, alpha: 1.00), actionColor: nil, cautionColor: UIColor(red: 0.19, green: 0.31, blue: 0.65, alpha: 1.00), highlightColor: UIColor(red: 0.13, green: 0.12, blue: 0.12, alpha: 1.00), royalColor: nil, defaultColor: nil)

        ButtonStyler.sharedInstance.colorScheme = colorScheme

        twitterButton.style(.Primary, style: .Bordered, radius: .Rounded)
        twitterButton.titleLabel?.font = UIFont.ioniconOfSize(30)
        twitterButton.setTitle(String.ioniconWithName(.SocialTwitter), forState: .Normal)

        facebookButton.style(.Caution, style: .Bordered, radius: .Rounded)
        facebookButton.titleLabel?.font = UIFont.ioniconOfSize(30)
        facebookButton.setTitle(String.ioniconWithName(.SocialFacebook), forState: .Normal)

        githubButton.style(.Highlight, style: .Bordered, radius: .Rounded)
        githubButton.titleLabel?.font = UIFont.ioniconOfSize(30)
        githubButton.setTitle(String.ioniconWithName(.SocialGithub), forState: .Normal)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        //        ButtonStyler().effect(twitterButton, effect: .Glow)
        //        ButtonStyler().effect(facebookButton, effect: .Glow)
        //        ButtonStyler().effect(githubButton, effect: .Glow)
    }
}


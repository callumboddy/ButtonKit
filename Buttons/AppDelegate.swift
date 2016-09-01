//
//  AppDelegate.swift
//  Buttons
//
//  Created by Callum Boddy on 20/08/2016.
//  Copyright © 2016 Callum Boddy. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let fontScheme = FontScheme(font: UIFont(name: "Avenir-Book", size: 24)!)
        let colorScheme = ColorScheme(primaryColor: UIColor(red: 0.35, green: 0.68, blue: 0.93, alpha: 1.00), actionColor: nil, cautionColor: UIColor(red: 0.19, green: 0.31, blue: 0.65, alpha: 1.00), highlightColor: UIColor(red: 0.13, green: 0.12, blue: 0.12, alpha: 1.00), royalColor: nil, defaultColor: nil)
        ButtonStyler.sharedInstance.fontScheme = fontScheme
        ButtonStyler.sharedInstance.colorScheme = colorScheme
        return true
    }
}


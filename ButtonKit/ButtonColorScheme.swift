//
//  ButtonColorScheme.swift
//  Buttons
//
//  Created by Callum Boddy on 22/08/2016.
//  Copyright © 2016 Callum Boddy. All rights reserved.
//

import Foundation
import UIKit

let defaultColorValue = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.00)
let primaryColorValue = UIColor(red: 0.00, green: 0.63, blue: 0.80, alpha: 1.00)
let actionColorValue = UIColor(red: 0.49, green: 0.71, blue: 0.00, alpha: 1.00)
let highlightColorValue = UIColor(red: 0.95, green: 0.55, blue: 0.02, alpha: 1.00)
let cautionColorValue = UIColor(red: 0.90, green: 0.25, blue: 0.16, alpha: 1.00)
let royalColorValue = UIColor(red: 0.53, green: 0.19, blue: 0.55, alpha: 1.00)

/**
 the six colors present in the color scheme,

 - Default:   default color - if none sepcified will default to this color
 - Primary:   primary color - for use with primary call to actions
 - Action:    action color - for you with seconday actions
 - Caution:   caution color - for use with errors, or destructive actions
 - Highlight: highlight color - use to point out particular buttons (share / more info/ etc...)
 - Royal:     royal color - used sparingly if another action is to be used which doesnt quite fir the rest
 */
public enum ColorSchemeColor {
    case Default
    case Primary
    case Action
    case Caution
    case Highlight
    case Royal
}

public struct ColorScheme {
    private var defaultColor: UIColor = defaultColorValue
    private var primaryColor: UIColor = primaryColorValue
    private var actionColor: UIColor = actionColorValue
    private var cautionColor: UIColor = cautionColorValue
    private var highlightColor: UIColor = highlightColorValue
    private var royalColor: UIColor = royalColorValue

    /**
     the initialiser for the ColorSchemeObject, all colors are optional and will
     default if not set. see ColorSchemeColor for color definitions

     - returns: a ColorScheme with the custom color set up required
     */
    init(primaryColor: UIColor?, actionColor: UIColor?,
        cautionColor: UIColor?, highlightColor: UIColor?,
        royalColor: UIColor?, defaultColor: UIColor?) {
        if let primaryColor = primaryColor {
            self.primaryColor = primaryColor
        }
        if let actionColor = actionColor {
            self.actionColor = actionColor
        }
        if let cautionColor = cautionColor {
            self.cautionColor = cautionColor
        }
        if let highlightColor = highlightColor {
            self.highlightColor = highlightColor
        }
        if let royalColor = royalColor {
            self.royalColor = royalColor
        }
        if let defaultColor = defaultColor {
            self.defaultColor = defaultColor
        }
    }

    init() {}

    /**
     returns the UIColor associated to the ColorSchemeColor set in the ColorScheme intance

     - parameter buttonColor: ColorShemeColor value

     - returns: the UIColor reprosenation of you scheme attribute
     */
    func colorForButtonColor(buttonColor: ColorSchemeColor) -> UIColor {
        switch buttonColor {
        case .Default:
            return defaultColor
        case .Primary:
            return primaryColor
        case .Action:
            return actionColor
        case .Caution:
            return cautionColor
        case .Highlight:
            return highlightColor
        case .Royal:
            return royalColor
        }
    }
}

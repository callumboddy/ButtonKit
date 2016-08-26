//
//  ButtonStyles.swift
//  Buttons
//
//  Created by Callum Boddy on 22/08/2016.
//  Copyright © 2016 Callum Boddy. All rights reserved.
//

import Foundation
import UIKit

public enum ButtonStyle {
    case Flat
    case Bordered
}

struct ButtonBorder {
    static func applyBorderStyle(button: UIButton, color: UIColor) {
        button.button_setBorder(color)
    }
}

private extension UIButton {
	func button_setBorder(color: UIColor) {
        backgroundColor = UIColor.clearColor()
        layer.borderColor = color.CGColor
        layer.borderWidth = 2
        setTitleColor(color, forState: .Normal)
    }
}
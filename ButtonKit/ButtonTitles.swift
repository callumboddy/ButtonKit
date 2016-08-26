//
//  ButtonTitles.swift
//  Buttons
//
//  Created by Callum Boddy on 22/08/2016.
//  Copyright © 2016 Callum Boddy. All rights reserved.
//

import Foundation
import UIKit

struct ButtonTitle {
    static func applyTitleStyle(button: UIButton, font: UIFont, color: UIColor, style: ButtonStyle) {
        button.button_setTitleLabelColor(font, color: color, style: style)
    }
}

private extension UIButton {

    func button_setTitleLabelColor(font: UIFont, color: UIColor, style: ButtonStyle) {
        titleLabel?.font = font
        if color.isColorBright() && style == .Flat {
            setTitleColor(color.darkenColor(70), forState: .Normal)
        } else {
            setTitleColor(UIColor.whiteColor(), forState: .Normal)
        }
        if style == .Bordered {
            setTitleColor(color, forState: .Normal)
            setTitleColor(UIColor.whiteColor(), forState: .Highlighted)
        }
    }
}

//
//  ButtonStyler.swift
//  Buttons
//
//  Created by Callum Boddy on 22/08/2016.
//  Copyright © 2016 Callum Boddy. All rights reserved.
//

import Foundation
import UIKit

class ButtonStyler {
    static let sharedInstance = ButtonStyler()
    var colorScheme: ColorScheme
    var fontScheme: FontScheme

    init() {
        colorScheme = ColorScheme()
        fontScheme = FontScheme()
    }

    static func style(button: UIButton, color: ColorSchemeColor = .Default, style: ButtonStyle = .Flat, radius: ButtonRadius = .Rounded) {
        let instance = self.sharedInstance
        instance.applyDefaults(button)
        let colorSchemeColor = instance.colorScheme.colorForButtonColor(color)
        ButtonPainter.applyColorForButtonColor(button, color: colorSchemeColor)
        if style == .Bordered {
            ButtonBorder.applyBorderStyle(button, color: colorSchemeColor)
        }
        ButtonState.applyPressedState(button, style: style)
        ButtonRadius.applyRadiusForButton(button, radius: radius)
        ButtonTitle.applyTitleStyle(button, font: instance.fontScheme.font, color: colorSchemeColor, style: style)

    }

    func effect(button: UIButton, effect: ButtonEffectStyle) {
        ButtonEffect.applyEffectForEffectStyle(button, effect: effect)
    }

    private func applyDefaults(button: UIButton) {
        button.adjustsImageWhenHighlighted = false
        button.adjustsImageWhenDisabled = false
        button.clipsToBounds = true
    }
}

public func style(button: UIButton, color: ColorSchemeColor = .Default, style: ButtonStyle = .Flat, radius: ButtonRadius = .Rounded) {
    ButtonStyler.style(button, color: color, style: style, radius: radius)
}

extension UIButton {
    func style(color: ColorSchemeColor = .Default, style: ButtonStyle = .Flat, radius: ButtonRadius = .Rounded) {
        ButtonStyler.style(self, color: color, style: style, radius: radius)
    }
}

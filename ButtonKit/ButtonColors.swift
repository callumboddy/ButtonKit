//
//  ButtonsColors.swift
//  Buttons
//
//  Created by Callum Boddy on 20/08/2016.
//  Copyright © 2016 Callum Boddy. All rights reserved.
//

import Foundation
import UIKit

struct ButtonPainter {
    static func applyColorForButtonColor(button: UIButton, color: UIColor) {
        button.button_setColor(color)
    }
}

private extension UIButton {
    func button_setColor(color: UIColor) {
        backgroundColor = color
    }
}

internal extension UIColor {
    func isColorBright() -> Bool {
        let saturation: CGFloat = saturationForColour()
        let brightness: CGFloat = brightnessForColour()
        return saturation < 0.4 && brightness > 0.9
    }

    func lightenColor(percentage: CGFloat = 10) -> UIColor {
        return newColorBrightness(1 + percentage / 100)
    }

    func darkenColor(percentage: CGFloat = 10) -> UIColor {
        return newColorBrightness(1 - percentage / 100)
    }

    private func newColorBrightness(adjustment: CGFloat) -> UIColor {
        var hue: CGFloat = 0, saturation: CGFloat = 0, brightness: CGFloat = 0, alpha: CGFloat = 0
        if getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha) {
            let newBrightness = min(brightness * adjustment, 1)
            return UIColor(hue: hue, saturation: saturation, brightness: newBrightness, alpha: alpha)
        }

        return UIColor()
    }

    internal func brightnessForColour() -> CGFloat {
        var hue: CGFloat = 0, saturation: CGFloat = 0, brightness: CGFloat = 0, alpha: CGFloat = 0
        if getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha) {
            return brightness
        }

        return 0
    }

    internal func saturationForColour() -> CGFloat {
        var hue: CGFloat = 0, saturation: CGFloat = 0, brightness: CGFloat = 0, alpha: CGFloat = 0
        if getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha) {
            return saturation
        }
        return 0
    }
}

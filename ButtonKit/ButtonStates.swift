//
//  ButtonStates.swift
//  Buttons
//
//  Created by Callum Boddy on 21/08/2016.
//  Copyright © 2016 Callum Boddy. All rights reserved.
//

import Foundation
import UIKit

let titleDimmingPercentage: CGFloat = 40

struct ButtonState {
    static func applyPressedState(button: UIButton, style: ButtonStyle) {
        button.applyDefaultPressedState(style)
    }
}

private extension UIButton {
    func applyDefaultPressedState(style: ButtonStyle) {
        guard let color = backgroundColor else { return }
        let borderColor = layer.borderColor != nil ? UIColor(CGColor: layer.borderColor!) : UIColor.whiteColor()
        let pressedStateColor = style == .Flat ? color.darkenColor() : borderColor
        let image = UIImage(color: pressedStateColor)
        setBackgroundImage(image, forState: .Highlighted)
        setTitleColor(color.darkenColor(titleDimmingPercentage) , forState: .Highlighted)
    }
}

private extension UIImage {
    convenience init?(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        guard let cgImage = image.CGImage else { return nil }
        self.init(CGImage: cgImage)
    }
}

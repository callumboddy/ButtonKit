//
//  ButtonRadius.swift
//  Buttons
//
//  Created by Callum Boddy on 20/08/2016.
//  Copyright © 2016 Callum Boddy. All rights reserved.
//

import Foundation
import UIKit

public enum ButtonRadius {
    case Square
    case Rounded
    case Pill

    static func applyRadiusForButton(button: UIButton, radius: ButtonRadius) {
        switch radius {
        case .Square:
            button.square()
        case .Rounded:
            button.rounded()
        case .Pill:
            button.pillRadius()
        }
    }
}

private extension UIButton {
    func cornerRadius(radius: CGFloat) {
        layer.cornerRadius = radius
    }

    func square() {
        cornerRadius(0)
    }

    func pillRadius() {
        cornerRadius(frame.height / 2)
    }

    func rounded() {
        cornerRadius(4)
    }
}

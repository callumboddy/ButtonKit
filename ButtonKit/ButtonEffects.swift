//
//  ButtonGlow.swift
//  Buttons
//
//  Created by Callum Boddy on 22/08/2016.
//  Copyright © 2016 Callum Boddy. All rights reserved.
//

import Foundation
import UIKit

public enum ButtonEffectStyle {
    case ThreeDimentional
    case Shadow
    case Glow
}

public struct ButtonEffect {
    static func applyEffectForEffectStyle(button: UIButton, effect: ButtonEffectStyle) {
        switch effect {
        case .ThreeDimentional:
            button.apply3D()
        case .Shadow:
            button.applyShadow()
        case .Glow:
            button.applyGlow()
        }
    }
}

private extension UIButton {
    func applyGlow() {
        guard let color = backgroundColor else { return }
        let layer = shadowLayer(color: color.darkenColor(30), offet: CGSize(width: 0.0, height: 0.0), opacity: 0.7, radius: 3)
        applyLayer(layer)
    }

    func apply3D() {
        guard let color = backgroundColor else { return }
        let layer = shadowLayer(color: color.darkenColor(30), offet: CGSize(width: 0.0, height: 4.0), opacity: 1, radius: 0)
        applyLayer(layer)
    }

    func applyShadow() {
        let layer = shadowLayer(color: UIColor.blackColor(), offet: CGSize(width: 1.0, height: 1.0), opacity: 0.3, radius: 2)
        applyLayer(layer)
    }

    private func applyLayer(layer: UIView) {
        self.superview?.addSubview(layer)
        self.superview?.sendSubviewToBack(layer)
    }

    private func shadowLayer(color color: UIColor, offet: CGSize, opacity: Float, radius: CGFloat) -> UIView {
        let shadowLayer = UIView(frame: self.frame)
        shadowLayer.backgroundColor = UIColor.clearColor()
        shadowLayer.layer.shadowColor = color.CGColor
        shadowLayer.layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: layer.cornerRadius).CGPath
        shadowLayer.layer.shadowOffset = offet
        shadowLayer.layer.shadowOpacity = opacity
        shadowLayer.layer.shadowRadius = radius
        shadowLayer.layer.masksToBounds = true
        shadowLayer.clipsToBounds = false
        return shadowLayer
    }
}

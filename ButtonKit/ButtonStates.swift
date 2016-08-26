//
//  ButtonStates.swift
//  Buttons
//
//  Created by Callum Boddy on 21/08/2016.
//  Copyright © 2016 Callum Boddy. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
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

extension UIButton {
    func applyDefaultPressedState() {
        guard let color = backgroundColor else { return }
        let image = UIImage(color: color.darkenColor())
        setBackgroundImage(image, forState: .Highlighted)
        setTitleColor(color.darkenColor(40) , forState: .Highlighted)
    }
}
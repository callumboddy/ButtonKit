//
//  ButtonRadius.swift
//  Buttons
//
//  Created by Callum Boddy on 20/08/2016.
//  Copyright © 2016 Callum Boddy. All rights reserved.
//

import Foundation
import UIKit

extension Button {
    func cornerRadius(radius: CGFloat) {
        layer.cornerRadius = radius
    }
}
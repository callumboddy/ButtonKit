//
//  ButtonsColors.swift
//  Buttons
//
//  Created by Callum Boddy on 20/08/2016.
//  Copyright © 2016 Callum Boddy. All rights reserved.
//

import Foundation
import UIKit

extension Button {
    
    func defaultColour() {
        backgroundColor = defaultColorValue
    }
    
    func primaryColour() {
        backgroundColor = primaryColorValue
    }

    func actionColour() {
        backgroundColor = actionColorValue
    }

    func highlightColour() {
        backgroundColor = highlightColorValue
    }

    func cautionColour() {
        backgroundColor = cautionColorValue
    }

    func royalColour() {
        backgroundColor = royalColorValue
    }
}

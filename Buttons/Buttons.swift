//
//  Buttons.swift
//  Buttons
//
//  Created by Callum Boddy on 20/08/2016.
//  Copyright © 2016 Callum Boddy. All rights reserved.
//

import Foundation
import UIKit

let defaultColorValue = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.00)
let primaryColorValue = UIColor(red:0.00, green:0.63, blue:0.80, alpha:1.00)
let actionColorValue = UIColor(red:0.49, green:0.71, blue:0.00, alpha:1.00)
let highlightColorValue = UIColor(red:0.95, green:0.55, blue:0.02, alpha:1.00)
let cautionColorValue = UIColor(red:0.90, green:0.25, blue:0.16, alpha:1.00)
let royalColorValue = UIColor(red:0.53, green:0.19, blue:0.55, alpha:1.00)

struct ButtonColorScheme {
    var primaryValue: UIColor = primaryColorValue
}

class Button: UIButton {
    init() {
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        defaultColour()
        setTitleColor(UIColor.whiteColor(), forState: .Normal)
    }
}
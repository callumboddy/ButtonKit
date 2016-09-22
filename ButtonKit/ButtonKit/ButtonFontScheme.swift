//
//  ButtonFontScheme.swift
//  Buttons
//
//  Created by Callum Boddy on 22/08/2016.
//  Copyright © 2016 Callum Boddy. All rights reserved.
//

import Foundation
import UIKit

struct FontScheme {
    var font: UIFont

    init(font: UIFont = UIFont.systemFontOfSize(UIFont.systemFontSize())) {
        self.font = font
    }
}

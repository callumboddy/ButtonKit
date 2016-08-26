//
//  ButtonColorsSpec.swift
//  Buttons
//
//  Created by Callum Boddy on 26/08/2016.
//  Copyright © 2016 Callum Boddy. All rights reserved.
//

@testable import Buttons
import XCTest
import Quick
import Nimble
import UIKit

class ButtonColorsSpec: QuickSpec {
    override func spec() {
        describe("button painter") {
            let button = UIButton()
            context("when I apply a color to a button", closure: {
                ButtonPainter.applyColorForButtonColor(button, color: UIColor.greenColor())
                it("background color is set to that color", closure: {
                    expect(button.backgroundColor).to(equal(UIColor.greenColor()))
                })
        	})
        }
    }
}


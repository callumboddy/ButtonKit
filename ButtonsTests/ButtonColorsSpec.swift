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
                it("pressed state image has been set", closure: {
                    let pressedBackground = button.backgroundImageForState(.Highlighted)
                    expect(pressedBackground).toNot(beNil())
                })
                it("pressed state title label color has been set", closure: {
                    let pressedTitleColor = button.titleColorForState(.Highlighted)
                    expect(pressedTitleColor).to(equal(UIColor.greenColor().darkenColor(titleDimmingPercentage)))
                })
            })
        }
        
        describe("color alterations") {
            let color = UIColor.blackColor()
            context("when i lighten a color", closure: {
                color.lightenColor()
                it("is 10% brighter", closure: { 
                    
                })
            })
        }
	}
}


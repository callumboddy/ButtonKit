//
//  ButtonsTests.swift
//  ButtonsTests
//
//  Created by Callum Boddy on 20/08/2016.
//  Copyright © 2016 Callum Boddy. All rights reserved.
//

import XCTest
@testable import Buttons

import Quick
import Nimble

class RoundedButtonSpec: QuickSpec {
    
    override func spec() {
        let button: UIButton = UIButton()
        describe("rounding a button") {
            context("by default") {
                it("has a  radius of 0") {
                    expect(button.layer.cornerRadius).to(equal(0))
                }
            }
            
            context("when i add apply a corner radius") {
                it("updates the value to its new radius") {
                    button.roundCorners(2)
                    expect(button.layer.cornerRadius).to(equal(2))
                    
                }
            }
        }
    }
}

class BorderedButtonSpec: QuickSpec {
    override func spec() {
        let button: UIButton = UIButton()
        describe("adding a border to a button") {
            context("by default") {
                it("has a border width of 0") {
                    expect(button.layer.borderWidth).to(equal(0))
                }
            }
            
            context("when i add border width") {
                it("updates the value to its new border width") {
                    button.layer.borderWidth = 4
                    expect(button.layer.borderWidth).to(equal(4))
                }
            }
        }
    }
}
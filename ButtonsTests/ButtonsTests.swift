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
            it("has a default radius of 0") {
                expect(button.layer.cornerRadius).to(equal(0))
            }

            context("when i round it") {
                it("updates the value to its new radius") {
                    button.roundCorners(2)
                    expect(button.layer.cornerRadius).to(equal(2))
                }
            }
        }
    }
}
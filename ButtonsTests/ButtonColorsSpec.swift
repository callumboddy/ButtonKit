//
//  ButtonColorsSpec.swift
//  Buttons
//
//  Created by Callum Boddy on 20/08/2016.
//  Copyright © 2016 Callum Boddy. All rights reserved.
//

import Foundation

@testable import Buttons
import XCTest
import Quick
import Nimble

class ButtonColorsSpec: QuickSpec {
    override func spec() {
        let button: Button = Button()
        describe("coloring a button") {
            context("by default") {
                it("has a backgorund color") {
                    expect(button.backgroundColor).to(equal(defaultColorValue))
                }
            }
        }
    }
}

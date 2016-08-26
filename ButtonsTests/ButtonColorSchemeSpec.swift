//
//  ButtonColorSchemeSpec.swift
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

class ButtonColorSchemeSpec: QuickSpec {
    override func spec() {
        let colorScheme: ColorScheme = ColorScheme()
        describe("a color scheme") {
            context("has a default color", {
                let color = colorScheme.colorForButtonColor(.Default)
                expect(color).toNot(beNil())
                it("that is equal to the 'default' default color", closure: {
                    expect(color).to(equal(defaultColorValue))
                })
            })
            context("has a primary color", {
                let color = colorScheme.colorForButtonColor(.Primary)
                expect(color).toNot(beNil())
                it("that is equal to the primary color", closure: {
                    expect(color).to(equal(primaryColorValue))
                })
            })
            context("has an action color", {
                let color = colorScheme.colorForButtonColor(.Action)
                expect(color).toNot(beNil())
                it("that is equal to the action color", closure: {
                    expect(color).to(equal(actionColorValue))
                })
            })
            context("has a caution color", {
                let color = colorScheme.colorForButtonColor(.Caution)
                expect(color).toNot(beNil())
                it("that is equal to the caution color", closure: {
                    expect(color).to(equal(cautionColorValue))
                })
            })
            context("has a highlight color", {
                let color = colorScheme.colorForButtonColor(.Highlight)
                expect(color).toNot(beNil())
                it("that is equal to the highlight color", closure: {
                    expect(color).to(equal(highlightColorValue))
                })
            })
            context("has a royal color", {
                let color = colorScheme.colorForButtonColor(.Royal)
                expect(color).toNot(beNil())
                it("that is equal to the royal color", closure: {
                    expect(color).to(equal(royalColorValue))
                })
            })
        }
        describe("a custom scheme") { 
            let colorScheme = ColorScheme(primaryColor: UIColor.greenColor(), actionColor: UIColor.blueColor(), cautionColor: UIColor.redColor(), highlightColor: UIColor.orangeColor(), royalColor: UIColor.purpleColor(), defaultColor: UIColor.blackColor())
            context("overrides the default colors", closure: { 
                it("has a custom primary color", closure: { 
                    let color = colorScheme.colorForButtonColor(.Primary)
                    expect(color).toNot(equal(primaryColorValue))
                    expect(color).to(equal(UIColor.greenColor()))
                })
            })
        }
        describe("a color scheme") {
            let colorScheme = ColorScheme()
            context("can fetch colors", closure: { 
                let color = colorScheme.colorForButtonColor(.Primary)
                expect(color.isKindOfClass(UIColor).boolValue).to(beTrue())
                expect(color).to(equal(primaryColorValue))
            })
        }
    }
}

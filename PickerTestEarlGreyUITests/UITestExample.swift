//
//  UITestExample.swift
//  PickerTestEarlGreyUITests
//
//  Created by Ilse Leon on 1/11/22.
//

import XCTest
import SwiftUI

class UITestExample: XCTestCase {

    var on = true
    
    override func setUp() {
        continueAfterFailure = false
        let app = XCUIApplication()
        app.launch()
    }

    var app: XCUIApplication? = nil
    
    func testSample() {
        app = XCUIApplication()
        let pickerMatcher = grey_allOf([grey_accessibilityID("picker"), grey_kindOfClass(UIPickerView.self)])
        EarlGrey.selectElement(with: pickerMatcher)
            .perform(grey_setPickerColumnToValue(0, "10"))
    }


}

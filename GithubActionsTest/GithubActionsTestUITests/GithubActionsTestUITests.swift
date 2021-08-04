//
//  GithubActionsTestUITests.swift
//  GithubActionsTestUITests
//
//  Created by Simon Bromberg on 2021-08-04.
//

import XCTest

class GithubActionsTestUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        XCTAssertTrue(app.buttons["Tap me!"].waitForExistence(timeout: 10))
        app.buttons["Tap me!"].tap()
        XCTAssertTrue(app.alerts.buttons["Done"].waitForExistence(timeout: 10))
        app.alerts.buttons["Done"].tap()
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}

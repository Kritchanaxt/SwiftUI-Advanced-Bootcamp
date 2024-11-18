//
//  SwiftUIThinkingAdvancedLearning_UITestsLaunchTests.swift
//  SwiftUIThinkingAdvancedLearning_UITests
//
//  Created by Kritchanat on 24/11/2567 BE.
//

import XCTest

final class SwiftUIThinkingAdvancedLearning_UITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}

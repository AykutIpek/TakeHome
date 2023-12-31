//
//  CreateScreenFormValidationTests.swift
//  iOSTakeHomeProjectUITests
//
//  Created by aykut ipek on 21.08.2023.
//

import XCTest

final class CreateScreenFormValidationTests: XCTestCase {

    private var app: XCUIApplication!
    
    override func setUp() {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launchArguments = ["-ui-testing"]
        app.launchEnvironment = ["-people-networking-success":"1"]
        app.launch()
    }
    
    override func tearDown() {
        app = nil
    }
    
    func test_when_all_form_fields_is_empty_first_name_error_is_shown() {
        let createBtn = app.buttons["createBtn"]
        XCTAssertTrue(createBtn.waitForExistence(timeout: 5), "There create button should be visible on the screen")
        
        createBtn.tap()
        
        let submitBtn = app.buttons["submitBtn"]
        XCTAssertTrue(submitBtn.waitForExistence(timeout: 5), "There create button should be visible on the screen")
        
        submitBtn.tap()
        
        let alert = app.alerts.firstMatch
        let alertBtn = alert.buttons.firstMatch

        XCTAssertTrue(alert.waitForExistence(timeout: 5), "There should be an alert on the screen")
        XCTAssertTrue(alert.staticTexts["First name can't be empty"].exists)
        XCTAssertEqual(alertBtn.label, "OK")

        alertBtn.tap()
        
        XCTAssertTrue(app.staticTexts["First name can't be empty"].exists)
        
        XCTAssertEqual(app.alerts.count, 0, "There should be no alerts on the screen")
    }
    
    func test_when_first_name_form_field_is_empty_first_name_error_is_shown() {
        
        let createBtn = app.buttons["createBtn"]
        XCTAssertTrue(createBtn.waitForExistence(timeout: 5), "The create button should be visible on the screen")
        
        createBtn.tap()
        
        let lastnameTxtFields = app.textFields["lastNameTxtFields"]
        let jobTxtFields = app.textFields["jobTxtFields"]
        
        lastnameTxtFields.tap()
        lastnameTxtFields.typeText("Ads")
        
        jobTxtFields.tap()
        jobTxtFields.typeText("iOS Developer")
        
        let submitBtn = app.buttons["submitBtn"]
        XCTAssertTrue(submitBtn.waitForExistence(timeout: 5), "There create button should be visible on the screen")
        
        submitBtn.tap()
        
        let alert = app.alerts.firstMatch
        let alertBtn = alert.buttons.firstMatch

        XCTAssertTrue(alert.waitForExistence(timeout: 5), "There should be an alert on the screen")
        XCTAssertTrue(alert.staticTexts["First name can't be empty"].exists)
        XCTAssertEqual(alertBtn.label, "OK")

        alertBtn.tap()
        
        XCTAssertTrue(app.staticTexts["First name can't be empty"].exists)
        
        XCTAssertEqual(app.alerts.count, 0, "There should be no alerts on the screen")
    }
    
    func test_when_last_name_form_field_is_empty_last_name_error_is_shown() {
        
        let createBtn = app.buttons["createBtn"]
        XCTAssertTrue(createBtn.waitForExistence(timeout: 5), "The create button should be visible on the screen")
        
        createBtn.tap()
        
        let firstNameTxtFields = app.textFields["firstNameTxtFields"]
        let jobTxtFields = app.textFields["jobTxtFields"]
        
        firstNameTxtFields.tap()
        firstNameTxtFields.typeText("Ads")
        
        jobTxtFields.tap()
        jobTxtFields.typeText("iOS Developer")
        
        let submitBtn = app.buttons["submitBtn"]
        XCTAssertTrue(submitBtn.waitForExistence(timeout: 5), "There create button should be visible on the screen")
        
        submitBtn.tap()
        
        let alert = app.alerts.firstMatch
        let alertBtn = alert.buttons.firstMatch

        XCTAssertTrue(alert.waitForExistence(timeout: 5), "There should be an alert on the screen")
        XCTAssertTrue(alert.staticTexts["Last name can't be empty"].exists)
        XCTAssertEqual(alertBtn.label, "OK")

        alertBtn.tap()
        
        XCTAssertTrue(app.staticTexts["Last name can't be empty"].exists)
        
        XCTAssertEqual(app.alerts.count, 0, "There should be no alerts on the screen")
    }
    
    func test_when_job_form_field_is_empty_job_error_is_shown() {
        
        let createBtn = app.buttons["createBtn"]
        XCTAssertTrue(createBtn.waitForExistence(timeout: 5), "The create button should be visible on the screen")
        
        createBtn.tap()
        
        let firstNameTxtFields = app.textFields["firstNameTxtFields"]
        let lastNameTxtFields = app.textFields["lastNameTxtFields"]
        
        firstNameTxtFields.tap()
        firstNameTxtFields.typeText("Ads")
        
        lastNameTxtFields.tap()
        lastNameTxtFields.typeText("Ipek")
        
        let submitBtn = app.buttons["submitBtn"]
        XCTAssertTrue(submitBtn.waitForExistence(timeout: 5), "There create button should be visible on the screen")
        
        submitBtn.tap()
        
        let alert = app.alerts.firstMatch
        let alertBtn = alert.buttons.firstMatch
        
        XCTAssertTrue(alert.waitForExistence(timeout: 5), "There should be an alert on the screen")
        XCTAssertTrue(alert.staticTexts["Job can't be empty"].exists)
        XCTAssertEqual(alertBtn.label, "OK")

        alertBtn.tap()
        
        XCTAssertTrue(app.staticTexts["Job can't be empty"].exists)
        
        XCTAssertEqual(app.alerts.count, 0, "There should be no alerts on the screen")
    }
}

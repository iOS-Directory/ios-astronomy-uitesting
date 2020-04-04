//
//  AstronomyUITests.swift
//  AstronomyUITests
//
//  Created by FGT MAC on 4/4/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest

class AstronomyUITests: XCTestCase {
    
    private var app: XCUIApplication {
        return XCUIApplication()
    }

    override func setUp() {
        continueAfterFailure = false
        app.launchArguments = ["UITesting"]
        app.launch()
    }
    
    func testSavePhoto() {

        app.collectionViews.children(matching: .cell).element(boundBy: 0).children(matching: .other).element.tap()
        
        
        app/*@START_MENU_TOKEN@*/.staticTexts["Save to Photo Library"]/*[[".buttons[\"Save to Photo Library\"].staticTexts[\"Save to Photo Library\"]",".buttons[\"PhotoDetailViewController.SaveButton\"].staticTexts[\"Save to Photo Library\"]",".staticTexts[\"Save to Photo Library\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        app.alerts["Photo Saved!"].scrollViews.otherElements.buttons["Okay"].tap()
    }
    
    func testSwitchSol() {
    
        app.navigationBars["Sol 1"]/*@START_MENU_TOKEN@*/.buttons["PhotosCollectionViewController.NextSolButton"]/*[[".buttons[\">\"]",".buttons[\"PhotosCollectionViewController.NextSolButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let titleLabel = app.navigationBars.staticTexts["Sol 2"]
        
        XCTAssertEqual(titleLabel.label, "Sol 2")
    }
 

    
}

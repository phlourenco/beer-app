//
//  BeerDetailsPresenterTests.swift
//  uol-beer-appTests
//
//  Created by Paulo Lourenço on 12/04/19.
//  Copyright © 2019 Paulo Lourenço. All rights reserved.
//

@testable import uol_beer_app
import XCTest

class BeerDetailsLogicSpy: BeerDetailsDisplayLogic {
    
    var calledDisplayDetails = false
    
    func displayDetails(viewModel: BeerDetails.ViewModel) {
        calledDisplayDetails = true
    }
    
}

class BeerDetailsPresenterTests: XCTestCase {
    
    // MARK: Subject under test
    
    var sut: BeerDetailsPresenter!
    var viewControllerSpy: BeerDetailsLogicSpy!
    
    // MARK: Test lifecycle
    
    override func setUp() {
        super.setUp()
        sut = BeerDetailsPresenter()
        viewControllerSpy = BeerDetailsLogicSpy()
    }
    
    override func tearDown() {
        super.tearDown()
        sut = nil
    }
    
    // MARK: Tests
    
    func testPresentDetails() {
        sut.viewController = viewControllerSpy
        sut.presentDetails(response: BeerDetails.Response(beer: Beer(name: "Heineken", imageUrl: nil, abv: 10, ibu: 5, tagline: "Open your world", description: nil)))
        
        XCTAssertTrue(viewControllerSpy.calledDisplayDetails)
    }
    
}

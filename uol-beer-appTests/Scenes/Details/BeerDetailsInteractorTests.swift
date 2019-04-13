//
//  BeerDetailsInteractorTests.swift
//  uol-beer-appTests
//
//  Created by Paulo Lourenço on 12/04/19.
//  Copyright © 2019 Paulo Lourenço. All rights reserved.
//

@testable import uol_beer_app
import XCTest
import Cuckoo

class BeerDetailsInteractorTests: XCTestCase {
    // MARK: Subject under test
    
    var sut: BeerDetailsInteractor!
    
    // MARK: Test lifecycle
    
    override func setUp() {
        super.setUp()
        sut = BeerDetailsInteractor()
    }
    
    override func tearDown() {
        super.tearDown()
        sut = nil
    }
    
    // MARK: Tests
    
    func testGetDetails() {
        let mockedPresenter = MockBeerDetailsPresenter()
        
        stub(mockedPresenter) { (stub) in
            when(stub.presentDetails(response: any())).thenDoNothing()
        }
        
        sut.presenter = mockedPresenter
        
        sut.beer = Beer(name: "Heineken", imageUrl: nil, abv: 10, ibu: 5, tagline: "Open your world", description: nil)
        
        sut.getDetails()
        
        verify(mockedPresenter, times(1)).presentDetails(response: any())
    }
    
    
    func testGetDetailsFail() {
        let mockedPresenter = MockBeerDetailsPresenter()
        
        stub(mockedPresenter) { (stub) in
            when(stub.presentDetails(response: any())).thenDoNothing()
        }
        
        sut.presenter = mockedPresenter
        
        sut.beer = nil
        sut.getDetails()
        
        verify(mockedPresenter, never()).presentDetails(response: any())
    }
}

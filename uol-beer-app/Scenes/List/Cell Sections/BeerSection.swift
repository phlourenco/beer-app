//
//  BeerSection.swift
//  uol-beer-app
//
//  Created by Paulo Lourenço on 11/04/19.
//  Copyright © 2019 Paulo Lourenço. All rights reserved.
//

import Foundation
import UIKit

class BeerCellViewModel: CellViewModel {
    var name: String
    var imageUrl: URL?
    
    init(name: String, imageUrl: URL?) {
        self.name = name
        self.imageUrl = imageUrl
    }
}

class BeerSection: SectionBase {
    
    var beers: [Beer]
    
    init(beers: [Beer]) {
        self.beers = beers
    }
    
    func getNumberOfRows() -> Int {
        return beers.count
    }
    
    func getCellIdentifier(forRow row: Int) -> String {
        return "BeerCell"
    }
    
    func getViewModel(forRow row: Int) -> CellViewModel {
        return BeerCellViewModel(name: beers[row].name, imageUrl: beers[row].imageUrl)
    }
    
}

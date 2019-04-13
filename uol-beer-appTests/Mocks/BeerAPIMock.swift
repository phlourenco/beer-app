//
//  BeerAPIMock.swift
//  uol-beer-appTests
//
//  Created by Paulo Lourenço on 12/04/19.
//  Copyright © 2019 Paulo Lourenço. All rights reserved.
//

import Foundation
@testable import uol_beer_app
@testable import PromiseKit

class BeerAPIMock: BeerAPIDataSource {
    
    func getBeers(page: Int?, itemsPerPage: Int?) -> Promise<[Beer]> {
        var beers = [Beer]()
        
        beers.append(Beer(name: "Heineken", imageUrl: nil, abv: 10, ibu: 5, tagline: "Open your world", description: nil))
        
        beers.append(Beer(name: "Skol", imageUrl: nil, abv: 7, ibu: 2, tagline: "A cerveja que desce redondo", description: nil))
        
        beers.append(Beer(name: "Brahma", imageUrl: nil, abv: 10, ibu: 5, tagline: "Refresca até pensamento", description: nil))
        
        beers.append(Beer(name: "Amstel", imageUrl: nil, abv: 10, ibu: 5, tagline: "O sabor de Amsterdam", description: nil))
        
        return .value(beers)
    }
    
}

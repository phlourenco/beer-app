//
//  BeerAPIDataSource.swift
//  uol-beer-app
//
//  Created by Paulo Lourenço on 11/04/19.
//  Copyright © 2019 Paulo Lourenço. All rights reserved.
//

import Foundation
import PromiseKit

protocol BeerAPIDataSource {
    func getBeers(page: Int?, itemsPerPage: Int?) -> Promise<[Beer]>
}

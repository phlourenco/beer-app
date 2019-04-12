//
//  BeerAPI.swift
//  uol-beer-app
//
//  Created by Paulo Lourenço on 11/04/19.
//  Copyright © 2019 Paulo Lourenço. All rights reserved.
//

import Foundation
import PromiseKit

class BeerAPI: BeerAPIDataSource {
    
    func getBeers(page: Int?, itemsPerPage: Int?) -> Promise<[Beer]> {
        var params: [String: Any] = [:]
        
        if let page = page, let itemsPerPage = itemsPerPage {
            params["page"] = page
            params["per_page"] = itemsPerPage
        }
        
        return APIClient().request(url: "https://api.punkapi.com/v2/beers", method: .get, parameters: params, headers: nil, parseAs: [Beer].self)
    }
    
}

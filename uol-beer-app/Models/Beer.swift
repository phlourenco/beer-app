//
//  Beer.swift
//  uol-beer-app
//
//  Created by Paulo Lourenço on 11/04/19.
//  Copyright © 2019 Paulo Lourenço. All rights reserved.
//

import Foundation

struct Beer: Decodable {
    var name: String
    var imageUrl: URL?
    var abv: Double?
    var ibu: Double?
    var tagline: String
    var description: String?
}

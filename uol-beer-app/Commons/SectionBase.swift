//
//  SectionBase.swift
//  uol-beer-app
//
//  Created by Paulo Lourenço on 11/04/19.
//  Copyright © 2019 Paulo Lourenço. All rights reserved.
//

import Foundation
import UIKit

protocol SectionBase {
    func getNumberOfRows() -> Int
    func getCellIdentifier(forRow row: Int) -> String
    func getViewModel(forRow row: Int) -> CellViewModel
}

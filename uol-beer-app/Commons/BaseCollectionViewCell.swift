//
//  BaseCollectionViewCell.swift
//  uol-beer-app
//
//  Created by Paulo Lourenço on 11/04/19.
//  Copyright © 2019 Paulo Lourenço. All rights reserved.
//

import Foundation
import UIKit

class BaseCollectionViewCell: UICollectionViewCell {
    
    func configure(viewModel: CellViewModel) {
        fatalError("Can't call super! Must implement your own 'configure' method.")
    }
    
}

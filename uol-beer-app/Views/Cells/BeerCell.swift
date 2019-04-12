//
//  BeerCell.swift
//  uol-beer-app
//
//  Created by Paulo Lourenço on 11/04/19.
//  Copyright © 2019 Paulo Lourenço. All rights reserved.
//

import UIKit
import SDWebImage

class BeerCell: BaseCollectionViewCell {

    // MARK: IBOutlets
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
        nameLabel.text = ""
    }
    
    override func configure(viewModel: CellViewModel) {
        guard let viewModel = viewModel as? BeerCellViewModel else { return }
        
        if let url = viewModel.imageUrl {
            imageView.sd_setImage(with: url, completed: nil)
        }
        nameLabel.text = viewModel.name
    }

}

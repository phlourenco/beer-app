//
//  BeerListViewController+CollectionView.swift
//  uol-beer-app
//
//  Created by Paulo Lourenço on 11/04/19.
//  Copyright © 2019 Paulo Lourenço. All rights reserved.
//

import UIKit

extension BeerListViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        guard let interactor = self.interactor else { return 0 }
        return interactor.getSections().count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let interactor = self.interactor else { return 0 }
        return interactor.getSections()[section].getNumberOfRows()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let interactor = self.interactor else { return UICollectionViewCell() }
        let section = interactor.getSections()[indexPath.section]
        
        let identifier = section.getCellIdentifier(forRow: indexPath.row)
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as? BaseCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.configure(viewModel: section.getViewModel(forRow: indexPath.row))
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let padding: CGFloat =  20
        let collectionViewSize = collectionView.frame.size.width - padding
        return CGSize(width: collectionViewSize/2, height: 273)
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        if indexPath.row == collectionView.numberOfItems(inSection: indexPath.section)-6 {
            print("Fetching more...")
            interactor?.getBeerList(next: true)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        interactor?.selectBeer(index: indexPath.row)
        router?.routeToDetails()
    }
    
}

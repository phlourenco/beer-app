//
//  BaseDisplayLogic.swift
//  uol-beer-app
//
//  Created by Paulo Lourenço on 12/04/19.
//  Copyright © 2019 Paulo Lourenço. All rights reserved.
//

import UIKit

protocol BaseDisplayLogic {
    func showLoadingView()
    func hideLoadingView()
}

extension BaseDisplayLogic where Self: UIViewController {
    
    func showLoadingView() {
        let blackView = UIView(frame: self.view.bounds)
        blackView.restorationIdentifier = "blackView"
        blackView.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        self.view.addSubview(blackView)
        
        let activityIndicator = UIActivityIndicatorView(frame: self.view.bounds)
        activityIndicator.style = .white
        activityIndicator.startAnimating()
        blackView.addSubview(activityIndicator)
    }
    
    func hideLoadingView() {
        self.view.subviews.first(where: { $0.restorationIdentifier == "blackView" })?.removeFromSuperview()
    }
    
}

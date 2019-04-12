//
//  BaseDisplayLogic.swift
//  uol-beer-app
//
//  Created by Paulo Lourenço on 12/04/19.
//  Copyright © 2019 Paulo Lourenço. All rights reserved.
//

import UIKit

protocol BaseDisplayLogic {
    func showError(title: String?, message: String?, tryAgainAction: (()->Void)?)
}

extension BaseDisplayLogic where Self: UIViewController {

    func showError(title: String?, message: String?, tryAgainAction: (()->Void)?) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)

        if let tryAgainAction = tryAgainAction {
            alertController.addAction(UIAlertAction(title: "Tentar novamente", style: .default, handler: { alert in
                tryAgainAction()
            }))
        }
        alertController.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))

        self.present(alertController, animated: true, completion: nil)
    }
    
}

//
//  AlertController.swift
//  GeoApp
//
//  Created by Alex on 17.11.2021.
//

import UIKit

extension UIViewController {
    
    func alertAddAddress(title: String, placeholder: String, complitionHandler: @escaping (String) -> Void) {
        let alertController = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let alertOK = UIAlertAction(title: "OK", style: .default) { action in
            print("action")
            
            let textFieldText = alertController.textFields?.first
            guard let text = textFieldText?.text else { return }
            complitionHandler(text)
        }
        
        alertController.addTextField { textField in
            textField.placeholder = placeholder
        }
        
        let alertCancel = UIAlertAction(title: "Cancel", style: .default) { _ in
        }
        
        alertController.addAction(alertOK)
        alertController.addAction(alertCancel)
        
        present(alertController, animated: true, completion: nil)
    }
    
    func alertError(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertOk = UIAlertAction(title: "Ok", style: .default)
        
        alertController.addAction(alertOk)
        
        present(alertController, animated: true, completion: nil)
    }
}

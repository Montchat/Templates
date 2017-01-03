//
//  ViewControllerExtensions.swift
//  Templates
//
//  Created by Joe Edwards on 1/3/17.
//  Copyright © 2017 HanekeDesign. All rights reserved.
//

import UIKit


//Presenting Alerts
extension UIViewController {
	
	func presentSimpleAlert(with title:Title, and message:Message) {
		
		DispatchQueue.main.async {
			let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
			let cancel = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
			alertVC.addAction(cancel)
			
			self.present(alertVC, animated: true, completion: nil)
			
		}
		
	}
	
}
